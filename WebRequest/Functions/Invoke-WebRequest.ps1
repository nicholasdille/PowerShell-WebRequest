function Invoke-WebRequest {
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=217035')]
    param(
        [switch]
        ${UseBasicParsing},

        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [uri]
        ${Uri},

        [Microsoft.PowerShell.Commands.WebRequestSession]
        ${WebSession},

        [Alias('SV')]
        [string]
        ${SessionVariable},

        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},

        [switch]
        ${UseDefaultCredentials},

        [ValidateNotNullOrEmpty()]
        [string]
        ${CertificateThumbprint},

        [ValidateNotNull()]
        [X509Certificate]
        ${Certificate},

        [string]
        ${UserAgent},

        [switch]
        ${DisableKeepAlive},

        [ValidateRange(0, 2147483647)]
        [int]
        ${TimeoutSec},

        [System.Collections.IDictionary]
        ${Headers},

        [ValidateRange(0, 2147483647)]
        [int]
        ${MaximumRedirection},

        [Microsoft.PowerShell.Commands.WebRequestMethod]
        ${Method},

        [uri]
        ${Proxy},

        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${ProxyCredential},

        [switch]
        ${ProxyUseDefaultCredentials},

        [Parameter(ValueFromPipeline=$true)]
        [System.Object]
        ${Body},

        [string]
        ${ContentType},

        [ValidateSet('chunked','compress','deflate','gzip','identity')]
        [string]
        ${TransferEncoding},

        [string]
        ${InFile},

        [string]
        ${OutFile},

        [switch]
        ${PassThru},
        
        [ValidateSet('Basic')]
        [string]
        $Authentication = 'Basic',
        
        [string]
        $User,
        
        [string]
        $Token,
        
        [switch]
        $NoCache
    )

    begin
    {
        if (-not $Headers) {
            $Headers = @{}
        }
        if ($User -and $Token -and -not $Headers.ContainsKey('Authorization')) {
            $AuthString = Get-BasicAuthentication -User $User -Token $Token
            $null = $Headers.Add('Authorization', "$Authentication $AuthString")
        }

        # Workaround for PSBoundParameters not being updated by modifying parameter
        $WrappedParameters = $PSBoundParameters
        $null = $WrappedParameters.Remove('Authentication')
        $null = $WrappedParameters.Remove('User')
        $null = $WrappedParameters.Remove('Token')
        $null = $WrappedParameters.Remove('NoCache')
        $WrappedParameters.Headers = $Headers
        if ($ProxyPreference -ieq 'Proxy') {
            if ($ProxyServer.Length -gt 0) {
                $WrappedParameters.Add('Proxy', $ProxyServer)

            } else {
                Write-Warning ('Proxy preference is {0} but proxy server is not configured.' -f $ProxyPreference)
            }
        }
    }

    process
    {
        if (-not $NoCache -and $CachePreference -ieq 'Cache') {
            $Response = Get-CachedWebRequest -Uri $Uri
            if ($Response) {
                $Response
                return
            }
        }

        $ConfiguredProtocols = [System.Net.ServicePointManager]::SecurityProtocol
        [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]'Tls11,Tls12'
        $Response = Microsoft.PowerShell.Utility\Invoke-WebRequest @WrappedParameters
        [System.Net.ServicePointManager]::SecurityProtocol = $ConfiguredProtocols

        Add-CachedWebRequest -Uri $Uri -Response $Response -PassThru
        Update-CachedWebRequest
    }
}