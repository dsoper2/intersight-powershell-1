# StorageItemAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlarmType** | **String** | The alarmType of the Local storage in FI. | [optional] [readonly] 
**Name** | **String** | The name of the Local storage in FI. | [optional] [readonly] 
**OperState** | **String** | The operState of the Local storage in FI. | [optional] [readonly] 
**Size** | **String** | The size (MB) of the Local storage in FI. | [optional] [readonly] 
**Used** | **String** | The used percent of the Local storage in FI. | [optional] [readonly] 
**InventoryDeviceInfo** | [**InventoryDeviceInfoRelationship**](InventoryDeviceInfoRelationship.md) |  | [optional] 
**NetworkElement** | [**NetworkElementRelationship**](NetworkElementRelationship.md) |  | [optional] 
**RegisteredDevice** | [**AssetDeviceRegistrationRelationship**](AssetDeviceRegistrationRelationship.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightStorageItemAllOf  -AlarmType null `
 -Name null `
 -OperState null `
 -Size null `
 -Used null `
 -InventoryDeviceInfo null `
 -NetworkElement null `
 -RegisteredDevice null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

