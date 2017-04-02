param (
    [Parameter(Mandatory = $true)]
    [string] $Url,

    [Parameter(Mandatory = $true)]
    [string] $OutPath,

    [Parameter(Mandatory = $true)]
    [string] $Sha256
)

$ErrorActionPreference = 'Stop'

$outputDirectory = [IO.Path]::GetDirectoryName($OutPath)
if (-not (Test-Path $outputDirectory)) {
    New-Item -ItemType Directory $outputDirectory
}

# TODO: Check hash and not redownload if already loaded

Invoke-WebRequest $Url -OutFile $OutPath
$hash = (Get-FileHash $OutPath -Algorithm SHA256).Hash
if ($hash -ne $Sha256) {
    Remove-Item $OutPath
    throw "Invalid hash for $OutPath. Expected $Sha256, got $hash"
}
