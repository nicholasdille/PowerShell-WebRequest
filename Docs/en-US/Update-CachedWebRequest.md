---
external help file: WebRequest-help.xml
online version: http://go.microsoft.com/fwlink/?LinkID=217035
schema: 2.0.0
---

# Update-CachedWebRequest

## SYNOPSIS
Removes expired items from the cache

## SYNTAX

```
Update-CachedWebRequest [-WhatIf] [-Confirm]
```

## DESCRIPTION
Enumerates the cached response objects and removes expires items

## EXAMPLES

### Example 1
```
PS C:\> Update-CachedWebRequest
```

Removes all expired items from the cache

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

