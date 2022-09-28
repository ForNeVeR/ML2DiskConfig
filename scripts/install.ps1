<#
.SYNOPSIS
    Installs the dependencies for the project build: Paket, PascalABC.NET
    compiler, NuGet packages.
#>
param (
    [string] $ProjectRootDirectory = "$PSScriptRoot/..",
    [string] $PaketInstallDirectory = "$ProjectRootDirectory/.paket",
    [string] $CompilerDirectory = "$ProjectRootDirectory/compiler",

    [string] $PaketVersion = '7.1.5',
    [string] $PaketBootstrapperSha256 = '2D74A7B6A2DDE3A699F746789E14052F359137C684FEC4D9CFE4E38EF6C5DD3E',
    [string] $PaketBootstrapperDownloadUrl = "https://github.com/fsprojects/Paket/releases/download/$PaketVersion/paket.bootstrapper.exe",
    [string] $CompilerUrl = 'https://github.com/ForNeVeR/pascalabcnet/releases/download/3.8.3.3178.preview.1/PABCNETC.zip',
    [string] $CompilerSha256 = '018E4623CCF49750E56DB82967D3D936E428EE80CFE22358AC541FF78C8C965A',

    [string] $PaketBootstrapperPath = "$PaketInstallDirectory/paket.bootstrapper.exe",
    [string] $PaketPath = "$PaketInstallDirectory/paket.exe",
    [string] $CompilerArchivePath = "$CompilerDirectory/PABCNETC.zip"
)

$ErrorActionPreference = 'Stop'

function install-paket-bootstrapper {
    & "$PSScriptRoot/lib/Download-File.ps1" `
        $PaketBootstrapperDownloadUrl `
        $PaketBootstrapperPath `
        $PaketBootstrapperSha256 `
        "Paket Bootstrapper"
}

function install-paket {
    Write-Output 'Installing Paket…'
    & $PaketBootstrapperPath $PaketVersion
    if (-not $?) {
        throw 'Error installing Paket'
    }
}

function install-pabcnetc {
    $compilerLoaded = & "$PSScriptRoot/lib/Download-File.ps1" `
        $CompilerUrl `
        $CompilerArchivePath `
        $CompilerSha256 `
        'PascalABC.NET Compiler'
    if ($compilerLoaded) {
        Write-Output "Unpacking PascalABC.NET Compiler…"
        Expand-Archive $CompilerArchivePath $CompilerDirectory
    }
}

function install-packages {
    Write-Output "Running paket restore"
    & $PaketPath restore
    if (-not $?) {
        throw 'Error restoring packages'
    }
}

if (-not (Test-Path $PaketPath)) {
    install-paket-bootstrapper
    install-paket
}

install-pabcnetc
install-packages
