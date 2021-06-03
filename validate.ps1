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

az group create `
    -n $ResourceGroupName `
    -l $Location

az deployment group what-if `
    -n deploy `
    -f $TemplateFile `
    -g $ResourceGroupName `
    --parameters prefix=$Prefix