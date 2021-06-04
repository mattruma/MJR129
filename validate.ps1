param(
    [Parameter(Mandatory=$true)]
    [ValidatePattern('^[a-zA-Z0-9]+$')]
    [String] $Prefix,
    [Parameter(Mandatory = $false)]
    [String] $Location = "eastus",
    [Parameter(Mandatory = $false)]
    [String] $TemplateFile = './deploy.bicep'
)

$ResourceGroupName = "$($Prefix)rg"

Write-Host "Prefix              : " $ResourceGroupName
Write-Host "Location            : " $Location
Write-Host "TemplateFile        : " $TemplateFile
Write-Host ""
Write-Host "Everything looks good!"