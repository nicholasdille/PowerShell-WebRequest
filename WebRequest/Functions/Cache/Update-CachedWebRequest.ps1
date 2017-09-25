function Update-CachedWebRequest {
    [CmdletBinding()]
    param()

    $ExpiredUri = @()
    $CachedUri = $script:Cache.Keys
    foreach ($Uri in $CachedUri) {
        $Item = $script:Cache.Item($Uri)
        if ($Item.Timestamp.AddSeconds($CacheLifetime) -lt [datetime]::UtcNow) {
            $ExpiredUri += $Uri
        }
    }
    foreach ($Uri in $ExpiredUri) {
        Remove-CachedWebRequest -Uri $Uri
    }
}