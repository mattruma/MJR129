param prefix string 


resource storage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: '${prefix}st'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
