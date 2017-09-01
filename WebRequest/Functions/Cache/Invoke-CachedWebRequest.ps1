function Invoke-CachedWebRequest {
    [CmdletBinding()]
    param(
        [Parameter()]
        [switch]
        $UseBasicParsing
        ,
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]
        $Uri
        ,
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [Microsoft.PowerShell.Commands.WebRequestMethod]
        $Method = 'Get'
        ,
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $Proxy
    )

    $Response = Get-CachedWebRequest -Uri $Uri
    if ($Response) {
        $Response
        return
    }

    $UpstreamParams = @{
        UseBasicParsing = $UseBasicParsing
        Uri             = $Uri
        Method          = $Method
    }
    if ($PSBoundParameters.ContainsKey('Proxy')) {
        $UpstreamParams.Add('Proxy', $PSBoundParameters.Proxy)
    }
    $Response = Invoke-WebRequest @UpstreamParams
    Add-CachedWebRequest -Uri $Uri -Response $Response -PassThru

    Update-CachedWebRequest
}