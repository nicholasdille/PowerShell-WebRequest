﻿# Whether to use the cache
# Valid values: Cache, ByPass
#if (-Not $global:CachePreference) {
#    $global:CachePreference = 'Cache'
#}
if (-Not $CachePreference) {
    $CachePreference = 'Cache'
}
Export-ModuleMember -Variable 'CachePreference'

# Whether to store the cache for reuse
# Valid values: Dispose, Persist
#if (-not $global:CachePersistence) {
#    $global:CachePersistence = 'Dispose'
#}
if (-not $CachePersistence) {
    $CachePersistence = 'Dispose'
}
Export-ModuleMember -Variable 'CachePersistence'

# Item lifetime in seconds
#if (-not $global:CacheLifetime) {
#    $global:CacheLifetime = 600
#}
if (-not $CacheLifetime) {
    $CacheLifetime = 600
}
Export-ModuleMember -Variable 'CacheLifetime'

# Cache for request/response objects stored by URL
$script:Cache = @{}

Get-ChildItem -Path "$PSScriptRoot" -Filter '*.ps1' -Recurse | ForEach-Object {
    . "$($_.FullName)"
}