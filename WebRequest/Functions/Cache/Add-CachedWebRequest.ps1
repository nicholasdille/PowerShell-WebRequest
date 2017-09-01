function Add-CachedWebRequest {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [pscustomobject]
        $Uri
        ,
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.PowerShell.Commands.WebResponseObject]
        $Response
        ,
        [Parameter()]
        [switch]
        $PassThru
    )

    if ($script:Cache.ContainsKey($Uri)) {
        $Item = $script:Cache.Item($Uri)

        if ($Item.Timestamp.AddSeconds($global:CacheLifetime) -ge [datetime]::UtcNow) {
            $Item.Timestamp = [datetime]::UtcNow
        
        } else {
            Remove-CachedWebRequest -Uri $Uri
        }
    }

    if (-not $script:Cache.ContainsKey($Uri)) {
        $script:Cache.Add($Uri, @{
            Timestamp = [datetime]::UtcNow
            Response  = $Response
        }) | Out-Null
    }

    if ($PassThru) {
        $Response
    }
}