@{
    # Script module or binary module file associated with this manifest.
    RootModule           = 'tumult.psm1'

    # Version number of this module.
    ModuleVersion        = '0.1.0'

    # Supported PSEditions
    CompatiblePSEditions = @('Desktop', 'Core')

    # ID used to uniquely identify this module
    GUID                 = 'd9c86d71-cda6-431e-b297-34e0560f8e30'

    # Author of this module
    Author               = 'jeralulz'

    # Company or vendor of this module
    CompanyName          = ''

    # Copyright statement for this module
    Copyright            = ''

    # Description of the functionality provided by this module
    Description          = 'Minimal Webhook Library for Discord'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion    = '7.0'

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport    = @()

    # Variables to export from this module
    VariablesToExport    = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport      = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData          = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = @('web', 'core', 'framework', 'REST')

            # A URL to the license for this module.
            LicenseUri   = ''

            # A URL to the main website for this project.
            ProjectUri   = 'https://github.com/jeralulz/tumult'

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            ReleaseNotes = @'
Initial release. No Functions so far just a basic class structure with a thorough example with all possible (as of yet) fields.
Shamelessly stolen from https://birdie0.github.io/discord-webhooks-guide/discord_webhook.html which inspired me to do it when looking up webhook things for Discord.
'@

        } # End of PSData hashtable

    } # End of PrivateData hashtable
}
