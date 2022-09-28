<#
.SYNOPSIS
    Builds the project.
#>
param (
    [string] $ProjectRootDirectory = "$PSScriptRoot/..",
    [string] $BinaryDirectory = "$ProjectRootDirectory/bin",
    [string] $CompilerDirectory = "$ProjectRootDirectory/compiler",
    [string] $LibraryDirectory = "$ProjectRootDirectory/libs",

    [string] $CompilerPath = "$CompilerDirectory/pabcnetcclear.exe"
)

$ErrorActionPreference = 'Stop'

function prepare-libraries {
    Write-Output 'Preparing library packages…'

    $libraries = @(
        "$ProjectRootDirectory/packages/Avalonia/lib/portable-windows8+net45/*"
        "$ProjectRootDirectory/packages/Avalonia.Desktop/lib/net45/*"
        "$ProjectRootDirectory/packages/SharpDX/lib/net45/*"
        "$ProjectRootDirectory/packages/SharpDX.Direct2D1/lib/net45/*"
        "$ProjectRootDirectory/packages/SharpDX.DXGI/lib/net45/*"
        "$ProjectRootDirectory/packages/Sprache/lib/net40/*"
        "$ProjectRootDirectory/packages/System.Reactive.Core/lib/net45/*"
        "$ProjectRootDirectory/packages/System.Reactive.Interfaces/lib/net45/*"
        "$ProjectRootDirectory/packages/System.Reactive.Linq/lib/net45/*"
    )

    if (-not (Test-Path $LibraryDirectory)) {
        $null = New-Item -ItemType Directory $LibraryDirectory
    }

    Copy-Item $libraries $LibraryDirectory
}

function compile-sources {
    Write-Output 'Compiling sources…'

    Push-Location "$ProjectRootDirectory/src"
    try {
        & $CompilerPath /Debug:1 ML2DiskConfig.pas
        if (-not $?) {
            throw 'Compilation error'
        }
    } finally {
        Pop-Location
    }
}

function deploy-binaries {
    Write-Output 'Deploying binaries…'
    if (-not (Test-Path $BinaryDirectory)) {
        $null = New-Item -ItemType Directory $BinaryDirectory
    }

    $binaries = @(
        "$ProjectRootDirectory/src/ML2DiskConfig.exe"
        "$ProjectRootDirectory/src/ML2DiskConfig.pdb"
    )

    Move-Item -Force $binaries $BinaryDirectory
    Copy-Item "$LibraryDirectory/*" $BinaryDirectory
    Copy-Item "$ProjectRootDirectory/src/app.config" "$BinaryDirectory/ML2DiskConfig.exe.config"
}

prepare-libraries
compile-sources
deploy-binaries
