<#
.SYNOPSIS
    Installs the dependencies for the project build: Paket, PascalABC.NET
    compiler, NuGet packages.
#>
param (
    [string] $ProjectRootDirectory = "$PSScriptRoot/..",
    [string] $PaketInstallDirectory = "$ProjectRootDirectory/.paket",
    [string] $CompilerDirectory = "$ProjectRootDirectory/compiler",

    [string] $PaketVersion = '4.1.3',
    [string] $PaketBootstrapperSha256 = 'E606B5A2BE6776D0165960D6B5557625F6A50D143E745C67617F76705C5C6053',
    [string] $PaketBootstrapperDownloadUrl = "https://github.com/fsprojects/Paket/releases/download/$PaketVersion/paket.bootstrapper.exe",
    [string] $CompilerUrl = 'http://pascalabc.net/downloads/PABCNETC.zip',
    [string] $CompilerSha256 = '919311FE8C8A3167E1910CFE073017A4A0523BB546CD0AAC17AFF1715F557CEA',

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
