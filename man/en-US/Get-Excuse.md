---
external help file: PowerBOFH-help.xml
Module Name: PowerBOFH
online version: https://github.com/rhymeswithmogul/PowerBOFH/blob/main/man/Get-Excuse_en-US.md
schema: 2.0.0
---

# Get-Excuse

## SYNOPSIS
Generates an excuse.

## SYNTAX

```
Get-Excuse [[-Timeout] <UInt32>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet will generate a BOFH-style excuse for you to use at work.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-Excuse
```

Downloads an excuse from the BOFH server.

### Example 2
```powershell
PS C:\> Get-Excuse -Timeout 10000
```

Downloads an excuse from the BOFH server, giving up after ten seconds.

## PARAMETERS

### -Timeout
Wait this many milliseconds before giving up and printing a generic excuse.  If not specified, the default value is thirty seconds.  A value of zero will cause this cmdlet to wait forever.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: 30000
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

This cmdlet accepts no input.

## OUTPUTS

### String

An excuse will be printed to the output stream.

## NOTES

This module requires Internet connectivity.

This module was developed without BOFH server operator Jeff Ballard, and is not affiliated with him in any way, shape, or form.

## RELATED LINKS
[http://pages.cs.wisc.edu/~ballard/bofh/](Jeff Ballard's BOFH-Style Excuse Server)
