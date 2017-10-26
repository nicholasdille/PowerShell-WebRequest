| AppVeyor | Coveralls | Download |
| :------: | :-------: | :------: |
| [![Build status](https://ci.appveyor.com/api/projects/status/p42btn7nggj54sh9?svg=true)](https://ci.appveyor.com/project/nicholasdille/powershell-webrequest) | [![Coverage Status](https://coveralls.io/repos/github/nicholasdille/PowerShell-WebRequest/badge.svg?branch=master)](https://coveralls.io/github/nicholasdille/PowerShell-WebRequest?branch=master) | [![Download](https://img.shields.io/badge/powershellgallery-WebRequest-blue.svg)](https://www.powershellgallery.com/packages/WebRequest/)

# Introduction

This modules provides an overload for `Invoke-WebRequest` as well as `Invoke-RestMethod` including basic authentication and response caching.

# Creating a proxy function

```powershell
$MetaData = New-Object System.Management.Automation.CommandMetaData (Get-Command Invoke-RestMethod)
[System.Management.Automation.ProxyCommand]::Create($MetaData)
```
