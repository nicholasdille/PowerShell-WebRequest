function Update-CachedWebRequest {
    [CmdletBinding()]
    param()

    $CachedUri = $script:Cache.Keys
    foreach ($Uri in $CachedUri) {
        $Item = $script:Cache.Item($Uri)
        if ($Item.Timestamp.AddSeconds($global:CacheLifetime) -lt [datetime]::UtcNow) {
            Remove-CachedWebRequest -Uri $Uri
        }
    }
}