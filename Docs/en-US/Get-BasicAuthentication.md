---
external help file: WebRequest-help.xml
online version: 
schema: 2.0.0
---
# Get-BasicAuthentication

## SYNOPSIS

Generates encoded credentials for HTTP basic authentication

## SYNTAX

```powershell
Get-BasicAuthentication [-User] <String> [-Token] <String>
```

## DESCRIPTION

The basic authentication scheme requires a HTTP header called `Authorization` containing an encoded authentication string. It must consist of username and token which are concatted using a colon, converted to a byte array and encoded using base64.

## EXAMPLES

### Example 1

```powershell
PS C:\> Get-BasicAuthentication -User 'myuser' -Token '43c2fcbacdd042f1'
```

The call returns the base64 encoded byte array of myuser:43c2fcbacdd042f1

## PARAMETERS

### -Token

The API token for the specified user

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -User

The username used for authentication

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

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
