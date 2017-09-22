# Introduction

This modules provides an overload for `Invoke-WebRequest` as well as `Invoke-RestMethod` including basic authentication and response caching.

# Creating a proxy function

```powershell
$MetaData = New-Object System.Management.Automation.CommandMetaData (Get-Command Invoke-RestMethod)
[System.Management.Automation.ProxyCommand]::Create($MetaData)
```