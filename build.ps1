param (
    $BinaryDirectory = "$PSScriptRoot/bin",
    $CompilerDirectory = "$PSScriptRoot/compiler",
    $LibraryDirectory = "$PSScriptRoot/libs",

    $CompilerUrl = 'http://pascalabc.net/downloads/PABCNETC.zip',
    $CompilerSha256 = 'BC1917C585CA7F87BAE4C589E042DCC3354A6E822DF0CEAAA73F29718A540967'
)

$ErrorActionPreference = 'Stop'

function prepare-libraries {
    Write-Output 'Preparing library packages…'

    $libraries = @(
        "$PSScriptRoot/packages/Avalonia/lib/portable-windows8+net45/*"
        "$PSScriptRoot/packages/Avalonia.Desktop/lib/net45/*"
        "$PSScriptRoot/packages/SharpDX/lib/net45/*"
        "$PSScriptRoot/packages/SharpDX.Direct2D1/lib/net45/*"
        "$PSScriptRoot/packages/System.Reactive.Core/lib/net45/*"
        "$PSScriptRoot/packages/System.Reactive.Interfaces/lib/net45/*"
    )

    if (-not (Test-Path $LibraryDirectory)) {
        New-Item -ItemType Directory $LibraryDirectory
    }

    Copy-Item $libraries $LibraryDirectory
}

function download-compiler {
    Write-Output 'Downloading PascalABC.NET compiler…'
    $archive = "$CompilerDirectory/PABCNETC.zip"
    & "$PSScriptRoot/scripts/lib/Download-File.ps1" `
        $CompilerUrl `
        $archive `
        $CompilerSha256
    Expand-Archive $archive $CompilerDirectory
}

function patch-compiler {
    Write-Output 'Patching compiler to support assembly redirection'
    Copy-Item "$PSScriptRoot/src/app.config" "$CompilerDirectory/pabcnetc.exe.config"
}

function compile-sources {
    Write-Output 'Compiling sources…'

    $pabcnetc = "$CompilerDirectory/pabcnetc.exe"

    Push-Location "$PSScriptRoot/src"
    try {
        & $pabcnetc Program.pas
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
        "$PSScriptRoot/src/Program.exe"
        "$PSScriptRoot/src/Program.pdb"
    )

    Move-Item -Force $binaries $BinaryDirectory
    Copy-Item "$LibraryDirectory/*" $BinaryDirectory
    Copy-Item "$PSScriptRoot/src/app.config" "$BinaryDirectory/Program.exe.config"
}

prepare-libraries
download-compiler
patch-compiler
compile-sources
deploy-binaries
