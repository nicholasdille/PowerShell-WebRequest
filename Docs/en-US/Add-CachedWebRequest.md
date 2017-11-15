---
external help file: WebRequest-help.xml
online version: 
schema: 2.0.0
---
# Add-CachedWebRequest

## SYNOPSIS

Adds a HTTP response to the cache

## SYNTAX

```powershell
Add-CachedWebRequest [-Uri] <PSObject> [-Response] <WebResponseObject> [-PassThru]
```

## DESCRIPTION

The specified response is added to the cache using the supplied URI. If the URI is already present in the cache, the timestamp is not updated.

## EXAMPLES

### Example 1

```powershell
PS C:\> Add-CachedWebRequest -Uri 'https://myserver.mydomain.com' -Response (Invoke-WebRequest -Uri 'https://myserver.mydomain.com')
```

Retrieves a reponse from the specified server and adds it to the cache

## PARAMETERS

### -PassThru

Outputs the response object to the pipeline

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Response

The HTTP response object to be stored in the cache

```yaml
Type: WebResponseObject
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Uri

The URI of the response object

```yaml
Type: PSObject
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
