#
# Module manifest for module 'PowerBOFH'
#
# Generated by: ccogle
#
# Generated on: 1/5/2021
#

@{

# Script module or binary module file associated with this manifest.
RootModule = (Join-Path -Path 'src' -ChildPath 'PowerBOFH.psm1')

# Version number of this module.
ModuleVersion = '1.0.0'

# Supported PSEditions
CompatiblePSEditions = @('Core', 'Desktop')

# ID used to uniquely identify this module
GUID = '49b310eb-c01b-4feb-9635-11a014d9b38b'

# Author of this module
Author = 'Colin Cogle'

# Copyright statement for this module
Copyright = '(c) 2021 Colin Cogle.  All rights reserved.'

# Description of the functionality provided by this module
Description = 'Fetches a useful excuse from a BOFH server.'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @('Get-Excuse')

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = ''

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @('Get-BofhExcuse', 'New-BofhExcuse', 'New-Excuse')

# List of all files packaged with this module
FileList = @(
	'en-US/about_PowerBOFH.help.txt',
	'en-US/PowerBOFH-help.xml',
	'src/PowerBOFH.psm1',
	'ChangeLog.md',
	'LICENSE',
	'NEWS.md',
	'PowerBOFH.psd1',
	'README.md'
)

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('excuse', 'BOFH', 'sysadmin', 'sysop', 'humor', 'funny', 'sarcasm', 'iiittttt')

        # A URL to the license for this module.
        LicenseUri = 'https://www.gnu.org/licenses/agpl-3.0.en.html'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/rhymeswithmogul/PowerBOFH'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/rhymeswithmogul/PowerBOFH/blob/main/README.md'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        RequireLicenseAcceptance = $false

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
