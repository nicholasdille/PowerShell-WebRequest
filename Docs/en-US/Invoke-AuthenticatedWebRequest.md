---
external help file: WebRequest-help.xml
online version: 
schema: 2.0.0
---

# Invoke-AuthenticatedWebRequest

## SYNOPSIS
Wrapper for Invoke-WebRequest adding basic authentication

## SYNTAX

```
Invoke-AuthenticatedWebRequest [-Uri] <String> [[-Method] <WebRequestMethod>] [[-Headers] <Hashtable>]
 [[-Scheme] <String>] [-User] <String> [-Token] <String>
```

## DESCRIPTION
Using the parameters `-User` and `-Token` the function adds a HTTP header to the request for the basic authentication scheme

## EXAMPLES

### Example 1
```
PS C:\> Invoke-AuthenticatedWebRequest -Uri 'https://myserver.mydomain.com' -User 'myuser' -Token '43c2fcbacdd042f1'
```

The above call adds the `Authorization` header to the HTTP request before calling `Invoke-WebRequest`

## PARAMETERS

### -Headers
Hash containing HTTP headers for the request

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Method
HTTP method for the web request

```yaml
Type: WebRequestMethod
Parameter Sets: (All)
Aliases: 
Accepted values: Default, Get, Head, Post, Put, Delete, Trace, Options, Merge, Patch

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scheme
Currently the function only supports basic authentication

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Basic

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Token
API token of the specified user

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Uri
URI of the target server for the request

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -User
Name of the user used for authentication

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### None


## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS

