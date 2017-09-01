function Remove-CachedWebRequest {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]
        $Uri
    )

    $null = $script:Cache.Remove($Uri)
}