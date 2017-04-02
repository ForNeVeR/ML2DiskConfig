param (
    $LibraryDirectory = "$PSScriptRoot/libs",
    $pabcnetc = "T:\Temp\pascalabcnet\bin\pabcnetc.exe"
)

$libraries = @(
    "$PSScriptRoot/packages/Avalonia/lib/portable-windows8+net45/*"
    "$PSScriptRoot/packages/Avalonia.Desktop/lib/net45/*"
    "$PSScriptRoot/packages/SharpDX/lib/net45/*"
    "$PSScriptRoot/packages/SharpDX.Direct2D1/lib/net45/*"
    "$PSScriptRoot/packages/System.Reactive.Core/lib/net45/*"
    "$PSScriptRoot/packages/System.Reactive.Interfaces/lib/net45/*"
)

Write-Output "Preparing library packages…"
if (-not (Test-Path $LibraryDirectory)) {
    New-Item -ItemType Directory $LibraryDirectory
}

Copy-Item $libraries $LibraryDirectory

Push-Location "$PSScriptRoot/src"
try {
    # TODO: Download the compiler and apply binding redirects
    & $pabcnetc Program.pas Program1.exe
} finally {
    Pop-Location
}
