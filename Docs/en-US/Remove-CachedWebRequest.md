---
external help file: WebRequest-help.xml
online version: http://go.microsoft.com/fwlink/?LinkID=217035
schema: 2.0.0
---

# Remove-CachedWebRequest

## SYNOPSIS
Removes an item from the cache

## SYNTAX

```
Remove-CachedWebRequest [-Uri] <String> [-WhatIf] [-Confirm]
```

## DESCRIPTION
The items referenced by the URI is removed from the cache

## EXAMPLES

### Example 1
```
PS C:\> Remove-CachedWebRequest -Uri 'https://myserver.mydomain.com'
```

Removes the cache response object for the specified URI

## PARAMETERS

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Uri
URI of the cached item

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
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

