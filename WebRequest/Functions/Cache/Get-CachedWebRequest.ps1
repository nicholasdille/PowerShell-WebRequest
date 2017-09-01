function Get-CachedWebRequest {
    [CmdletBinding()]
    param(
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $Uri
    )

    if ($PSBoundParameters.ContainsKey('Uri')) {
        $Item = $script:Cache.Item($Uri)
        if ($Item) {
            if ($Item.Timestamp.AddSeconds($global:CacheLifetime) -ge [datetime]::UtcNow) {
                $Item.Response
            }
        }

    } else {
        $script:Cache
    }
}