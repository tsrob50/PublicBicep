
@minLength(3)
@maxLength(24)
param stgActName string

@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_RAGRS'
  'Standard_ZRS'
  'Premium_LRS'
  'Premium_ZRS'
  'Standard_GZRS'
])
param stgActSku string = 'Standard_LRS'

param stgTags object = {
  Environment: 'Lab'
  Dept: 'IT'
}




resource storage 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: stgActName
  sku: {
    name: stgActSku
  }
  kind: 'StorageV2'
  location: 'CentralUS'
  tags: stgTags
}
