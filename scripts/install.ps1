<#
.SYNOPSIS
    Installs the dependencies for the project build.
.PARAMETER Directory
    A directory where Paket binary should be downloaded.
.PARAMETER PaketVersion
    A version of Paket bootstrapper binary to download.
.PARAMETER PaketBootstrapperSha256Hash
    A SHA-256 hash of Paket bootstrapper binary.
#>
param (
    [string] $Directory = "$PSScriptRoot/../.paket",
    [string] $PaketVersion = "2.40.11",
    [string] $PaketBootstrapperSha256Hash = '6B770E158CB196B032F39CC1788BB2A29904C5726F5E9B297EEF9709ED088E71'
)

$ErrorActionPreference = 'Stop'

$url = "https://github.com/fsprojects/Paket/releases/download/$PaketVersion/paket.bootstrapper.exe"

$bootstrapper = "$Directory/paket.bootstrapper.exe"
if (-not (Test-Path $bootstrapper)) {
    Write-Output "Downloading paket bootstrapper"
    & "$PSScriptRoot/lib/Download-File.ps1" $url $bootstrapper $PaketBootstrapperSha256Hash
}

if (-not $?) {
    exit -1
}

$paket = "$Directory/paket.exe"
if (-not (Test-Path $paket)) {
    Write-Output "Running paket bootstrapper"
    & $bootstrapper
}

Write-Output "Running paket restore"
& $paket restore

exit -not $?
