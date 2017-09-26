---
external help file: WebRequest-help.xml
online version: 
schema: 2.0.0
---

# Clear-CachedWebRequest

## SYNOPSIS
Remove all items from the response cache

## SYNTAX

```
Clear-CachedWebRequest [-WhatIf] [-Confirm]
```

## DESCRIPTION
All items will be purged from the cache regardless of their remaining lifetime

## EXAMPLES

### Example 1
```
PS C:\> Clear-CachedWebRequest
```

All cached items are removed

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

