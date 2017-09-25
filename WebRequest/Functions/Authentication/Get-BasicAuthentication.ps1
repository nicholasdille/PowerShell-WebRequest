#requires -Modules Helpers

function Get-BasicAuthentication {
    [CmdletBinding()]
    param(
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

    ConvertTo-Base64 -Data "$($User):$Token" -Encoding ASCII
}