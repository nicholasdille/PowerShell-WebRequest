@{
    RootModule = 'WebRequest.psm1'
    ModuleVersion = '0.1'
    GUID = '5480cbcb-78f7-42d6-846d-9990598b7bd1'
    Author = 'Nicholas Dille'
    #CompanyName = ''
    Copyright = '(c) 2017 Nicholas Dille. All rights reserved.'
    # Description = ''
    # PowerShellVersion = ''
    # RequiredModules = @()
    FunctionsToExport = @(
        'Add-CachedWebRequest'
        'Clear-CachedWebRequest'
        'Get-CachedWebRequest'
        'Remove-CachedWebRequest'
        'Update-CachedWebRequest'
        'Invoke-CachedWebRequest'
        'Invoke-AuthenticatedWebRequest'
        'Invoke-WebRequest'
        'Invoke-RestMethod'
    )
    CmdletsToExport = @()
    VariablesToExport = @(
        'CachePreference'
        'CachePersistence'
        'CacheLifetime'
    )
    AliasesToExport = @()
    #FormatsToProcess = @()
    PrivateData = @{
        PSData = @{
            # Tags = @()
            # LicenseUri = ''
            # ProjectUri = ''
            # ReleaseNotes = ''
        }
    }
}

