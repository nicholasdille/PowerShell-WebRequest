function Invoke-AuthenticatedWebRequest {
    [CmdletBinding()]
    param(
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
        [hashtable]
        $Headers = @{}
        ,
        [Parameter()]
        [ValidateSet('Basic')]
        [string]
        $Scheme = 'Basic'
        ,
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]
        $User
        ,
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]
        $Token
    )

    if ($User -and $Token -and -not $Headers.ContainsKey('Authorization')) {
        $AuthString = ConvertTo-Base64 -Data "$($User):$Token" -Encoding ASCII
        $Headers.Add('Authorization', "$Scheme $AuthString")
    }

    $IwrParams = @{
        Uri = $Uri
        Method = $Method
        Headers = $Headers
    }

    Invoke-WebRequest @IwrParams
}