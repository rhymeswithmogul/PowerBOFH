#Requires -Version 5.0
Function Get-Excuse {
	[Alias('New-Excuse', 'New-BofhExcuse', 'Get-BofhExcuse')]
	[CmdletBinding()]
	[OutputType('String')]
	Param(
		[UInt32] $Timeout = 30000
	)

	Try {
		Write-Debug "Opening a socket to Jeff Ballard's server"
		$socket = [Net.Sockets.TcpClient]::new('bofh.jeffballard.us', 666)
		Write-Debug "Setting timeouts to $Timeout milliseconds"
		$socket.SendTimeout = $Timeout
		$socket.ReceiveTimeout = $Timeout
		$stream = $socket.GetStream()

		# Allocate a buffer, then read the stream and get an excuse.
		Write-Debug 'Fetching an excuse from the server'
		$bufferSize = 2048
		$buffer = New-Object -TypeName Byte[] -ArgumentList $bufferSize
		$read = $stream.Read($buffer, 0, $bufferSize)

		# Get the response from the server, and split it into lines.
		# That way, we can separate the header from the excuse.
		Write-Debug 'Encoding the string and showing it to the user'
		$Return = ([Text.UTF8Encoding]::new()).GetString($buffer, 0, $read) -Split "`n"

		# There will be some header lines, which we'll send to the Verbose stream.
		$Header = ($Return | Where-Object {$_ -Match '==='}) -Replace ''
		ForEach ($line in $Header) {
			Write-Verbose $line
		}

		# Send the excuse to the Output stream.
		$Excuse = ($Return | Where-Object {$_ -NotMatch '==='}) -Replace 'Your excuse is: '
		Write-Output $Excuse
	}
	Catch [IOException] {
		Write-Error "Could not connect to BOFH server within $($Timeout / 1000) seconds."
		Write-Output 'The excuse generator is down.'
	}
	Finally {
		Write-Debug 'Disposing of the stream object'
		If ($null -ne $stream) {
			$stream.Close()
		}
	}
}