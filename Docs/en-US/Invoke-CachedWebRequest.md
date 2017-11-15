---
external help file: WebRequest-help.xml
online version: 
schema: 2.0.0
---
# Invoke-CachedWebRequest

## SYNOPSIS

Wrapper for `Invoke-WebRequest` adding caching of the response object

## SYNTAX

```powershell
Invoke-CachedWebRequest [-UseBasicParsing] [-Uri] <String> [[-Method] <WebRequestMethod>] [[-Proxy] <String>]
```

## DESCRIPTION

The first call fetches the specified URI and stores it in the cacahe to speed up later requests. The behaviour is controlled by the following variables:

- `$CachePreference` defines if the cache is used at all. Possible values are `Cache` and `ByPass`

- `$CacheLifetime` sets the lifetime of cached items in seconds. Changing this variable will take effect for all cached items

- `$CachePersistence` denotes whether the cache is persisted. Possible values are `Dispose` and `Persist`

## PARAMETERS

### -Method

Method for the HTTP request

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

### -Proxy

Proxy server to be used for the request

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Uri

URI to be requested

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

### -UseBasicParsing

Whether to use basic parsing only

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

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
