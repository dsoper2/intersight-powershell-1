# EquipmentFanModuleAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | This field is to provide description for the fan module. | [optional] [readonly] 
**ModuleId** | **Int64** | This field acts as the identifier for this particular Module, within the Fabric Interconnect. | [optional] [readonly] 
**OperState** | **String** | This field is used to indicate this fan module&#39;s operational state. | [optional] [readonly] 
**PartNumber** | **String** | This field identifies the Part Number for this Fan Module. | [optional] [readonly] 
**VarPid** | **String** | This field identifies the Product ID for the fan module. | [optional] [readonly] 
**Presence** | **String** | This field is used to indicate this fan module&#39;s presence. | [optional] [readonly] 
**Sku** | **String** | This field identifies the Stockkeeping Unit for this Fan Module. | [optional] [readonly] 
**TrayId** | **Int64** | Tray identifier for the fan module. | [optional] [readonly] 
**Vid** | **String** | This field identifies the Vendor ID for this Fan Module. | [optional] [readonly] 
**ComputeRackUnit** | [**ComputeRackUnitRelationship**](ComputeRackUnitRelationship.md) |  | [optional] 
**EquipmentChassis** | [**EquipmentChassisRelationship**](EquipmentChassisRelationship.md) |  | [optional] 
**EquipmentRackEnclosure** | [**EquipmentRackEnclosureRelationship**](EquipmentRackEnclosureRelationship.md) |  | [optional] 
**Fans** | [**EquipmentFanRelationship[]**](EquipmentFanRelationship.md) | An array of relationships to equipmentFan resources. | [optional] [readonly] 
**InventoryDeviceInfo** | [**InventoryDeviceInfoRelationship**](InventoryDeviceInfoRelationship.md) |  | [optional] 
**NetworkElement** | [**NetworkElementRelationship**](NetworkElementRelationship.md) |  | [optional] 
**RegisteredDevice** | [**AssetDeviceRegistrationRelationship**](AssetDeviceRegistrationRelationship.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightEquipmentFanModuleAllOf  -Description null `
 -ModuleId null `
 -OperState null `
 -PartNumber null `
 -VarPid null `
 -Presence null `
 -Sku null `
 -TrayId null `
 -Vid null `
 -ComputeRackUnit null `
 -EquipmentChassis null `
 -EquipmentRackEnclosure null `
 -Fans null `
 -InventoryDeviceInfo null `
 -NetworkElement null `
 -RegisteredDevice null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

