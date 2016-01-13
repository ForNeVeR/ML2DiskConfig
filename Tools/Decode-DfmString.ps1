<#
.SYNOPSIS
    Create .NET string from DFM-encoded string.
#>
param (
    [string]$String
)

$chars = $String.Split(@('#'), 'RemoveEmptyEntries') | % { [char] [int]$_ }
New-Object System.String (, $chars)
