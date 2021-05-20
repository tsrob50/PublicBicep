
resource storage 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'cirstorage22312'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  location: 'CentralUS'
}
