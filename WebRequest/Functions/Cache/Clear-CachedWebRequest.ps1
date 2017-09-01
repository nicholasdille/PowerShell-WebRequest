function Clear-CachedWebRequest {
    [CmdletBinding()]
    param()

    $script:Cache = @{}
}