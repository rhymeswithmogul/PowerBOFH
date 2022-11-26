#Requires -Version 5.0

Function Get-Excuse {
	[Alias('New-Excuse', 'New-BofhExcuse', 'Get-BofhExcuse', 'bofh')]
	[CmdletBinding()]
	[OutputType([String])]
	Param()

	$ExcusesPath = Join-Path -Path ((Get-Module 'PowerBOFH').ModuleBase) -ChildPath 'contrib'
	Write-Debug "Looking for excuses in $ExcusesPath."

	$Excuses = [String[]]@()
	Get-ChildItem -Path $ExcusesPath -Filter '*.txt' -Recurse | ForEach-Object {
		$Excuses += Read-ExcuseFile $_ -Debug:$DebugPreference
	}

	Write-Verbose "We have $($Excuses.Count) potential excuses.  How exciting."
	If ($Excuses.Count -eq 0) {
		Return 'The excuse generator is broken.'
	}
	Else {
		Return $Excuses[(Get-Random $Excuses.Count) - 1]
	}
}

Function Read-ExcuseFile {
	[CmdletBinding()]
	[OutputType([String[]])]
	Param(
		[Parameter(Mandatory, Position=0, ValueFromPipeline)]
		[IO.FileInfo] $InputObject
	)
	
	Write-Debug "Reading excuses from $($InputObject.FullName)..."
	$MoreExcuses  = [String[]]@()
	$MoreExcuses += (Get-Content -Path $InputObject.FullName -Encoding 'UTF8' -ErrorAction SilentlyContinue)
	Write-Debug "Loaded $($MoreExcuses.Count) excuses from $InputObject."
	Return $MoreExcuses
}
