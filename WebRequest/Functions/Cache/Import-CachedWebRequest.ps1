function Import-CachedWebRequest {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]
        $Path
    )

    $script:Cache = Import-Clixml -Path $Path
}