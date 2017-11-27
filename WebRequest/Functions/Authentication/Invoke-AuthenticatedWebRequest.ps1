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
        ,
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $Body
    )

    if ($User -and $Token -and -not $Headers.ContainsKey('Authorization')) {
        $AuthString = Get-BasicAuthentication -User $User -Token $Token
        $Headers.Add('Authorization', "$Scheme $AuthString")
    }

    $IwrParams = @{
        Uri = $Uri
        Method = $Method
        Headers = $Headers
    }
    if ($Body) {
        $IwrParams.Add('Body', $Body)
    }

    Invoke-WebRequest @IwrParams
}