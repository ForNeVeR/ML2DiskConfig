param (
    [Parameter(Mandatory = $true)]
    [string] $Url,

    [Parameter(Mandatory = $true)]
    [string] $OutPath,

    [Parameter(Mandatory = $true)]
    [string] $Sha256,

    [string] $Title
)

$ErrorActionPreference = 'Stop'

if (-not $Title) {
    $Title = $Url
}

Write-Host "Downloading $Title…"

$outputDirectory = [IO.Path]::GetDirectoryName($OutPath)
if (-not (Test-Path $outputDirectory)) {
    $null = New-Item -ItemType Directory $outputDirectory
}

function getHash {
    (Get-FileHash $OutPath -Algorithm SHA256).Hash
}

if ((Test-Path $OutPath) -and ((getHash) -eq $Sha256)) {
    Write-Host "$Title already loaded and have proper hash"
    $false
} else {
    Invoke-WebRequest $Url -OutFile $OutPath
    $hash = getHash
    if ($hash -ne $Sha256) {
        Remove-Item $OutPath
        throw "Invalid hash for $Title. Expected $Sha256, got $hash"
    }

    $true
}
