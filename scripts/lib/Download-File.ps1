param (
    [Parameter(Mandatory = $true)]
    [string] $Uri,

    [Parameter(Mandatory = $true)]
    [string] $OutPath,

    [Parameter(Mandatory = $true)]
    [string] $Sha256
)

$ErrorActionPreference = 'Stop'

Invoke-WebRequest $url -OutFile $OutPath
$hash = (Get-FileHash $OutPath -Algorithm SHA256).Hash
if ($hash -ne $Sha256) {
    Remove-Item $OutPath
    throw "Invalid hash for $OutPath. Expected $Sha256, got $hash"
}
