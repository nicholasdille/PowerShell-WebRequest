---
external help file: WebRequest-help.xml
online version: 
schema: 2.0.0
---
# Get-CachedWebRequest

## SYNOPSIS

Retrieve items from the response cache

## SYNTAX

```powershell
Get-CachedWebRequest [[-Uri] <String>]
```

## DESCRIPTION

The function either returns all cached items or the one for a specific URI

## EXAMPLES

### Example 1

```powershell
PS C:\> Get-CachedWebRequest
```

Returns all cached items

### Example 1

```powershell
PS C:\> Get-CachedWebRequest -Uri 'https://myserver.mydomain.com'
```

Returns the cached item for `https://myserver.mydomain.com`

## PARAMETERS

### -Uri

URI of the cached item

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
