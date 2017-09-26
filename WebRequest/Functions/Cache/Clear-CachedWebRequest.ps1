function Clear-CachedWebRequest {
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='High')]
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
        if ($Force -or $PSCmdlet.ShouldProcess("Remove all items from the WebRequest cache?")) {
            $script:Cache = @{}
        }
    }
}