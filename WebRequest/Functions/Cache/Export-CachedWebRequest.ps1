function Export-CachedWebRequest {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]
        $Path
    )

    Export-Clixml -InputObject $script:Cache -Depth 5 -Path $Path
}