function Update-CachedWebRequest {
    [CmdletBinding(SupportsShouldProcess)]
    param()
    
    begin {
        if (-not $PSBoundParameters.ContainsKey('Confirm')) {
            $ConfirmPreference = $PSCmdlet.SessionState.PSVariable.GetValue('ConfirmPreference')
        }
        if (-not $PSBoundParameters.ContainsKey('WhatIf')) {
            $WhatIfPreference = $PSCmdlet.SessionState.PSVariable.GetValue('WhatIfPreference')
        }
    }

    process {
        $ExpiredUri = @()
        $CachedUri = $script:Cache.Keys
        foreach ($Uri in $CachedUri) {
            $Item = $script:Cache.Item($Uri)
            if ($Item.Timestamp.AddSeconds($CacheLifetime) -lt [datetime]::UtcNow) {
                $ExpiredUri += $Uri
            }
        }

        if ($Force -or $PSCmdlet.ShouldProcess("ShouldProcess?")) {
            foreach ($Uri in $ExpiredUri) {
                Remove-CachedWebRequest -Uri $Uri
            }
        }
    }
}