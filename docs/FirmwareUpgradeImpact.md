# FirmwareUpgradeImpact
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountMoid** | **String** | The Account ID for this managed object. | [optional] [readonly] 
**ClassId** | **String** | The concrete type of this complex type. Its value must be the same as the &#39;objectType&#39; property. The OpenAPI document references this property as a discriminator value. | [readonly] 
**CreateTime** | **System.DateTime** | The time when this managed object was created. | [optional] [readonly] 
**DomainGroupMoid** | **String** | The DomainGroup ID for this managed object. | [optional] [readonly] 
**ModTime** | **System.DateTime** | The time when this managed object was last modified. | [optional] [readonly] 
**Moid** | **String** | The unique identifier of this Managed Object instance. | [optional] 
**ObjectType** | **String** | The fully-qualified type of this managed object, i.e. the class name. This property is optional. The ObjectType is implied from the URL path. If specified, the value of objectType must match the class name specified in the URL path. | [readonly] 
**Owners** | **String[]** |  | [optional] 
**SharedScope** | **String** | Intersight provides pre-built workflows, tasks and policies to end users through global catalogs. Objects that are made available through global catalogs are said to have a &#39;shared&#39; ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs. | [optional] [readonly] 
**Tags** | [**MoTag[]**](MoTag.md) |  | [optional] 
**VersionContext** | [**MoVersionContext**](MoVersionContext.md) |  | [optional] 
**Ancestors** | [**MoBaseMoRelationship[]**](MoBaseMoRelationship.md) | An array of relationships to moBaseMo resources. | [optional] [readonly] 
**Parent** | [**MoBaseMoRelationship**](MoBaseMoRelationship.md) |  | [optional] 
**PermissionResources** | [**MoBaseMoRelationship[]**](MoBaseMoRelationship.md) | An array of relationships to moBaseMo resources. | [optional] [readonly] 
**DisplayNames** | [**System.Collections.Hashtable**](Array.md) | a map of display names for a resource. | [optional] [readonly] 
**Components** | **String[]** |  | [optional] 
**ComputationState** | **String** | Captures the status of an upgrade impact calculation. Indicates whether the calculation is complete, in progress or the calculation is impossible due to the absence of the target image on the endpoint. | [optional] [default to "Inprogress"]
**ExcludeComponents** | **String[]** |  | [optional] 
**Impacts** | [**FirmwareBaseImpact[]**](FirmwareBaseImpact.md) |  | [optional] 
**Summary** | **String** | The summary on the component or components getting impacted by the upgrade. | [optional] [default to "Basic"]
**Chassis** | [**EquipmentChassisRelationship[]**](EquipmentChassisRelationship.md) | An array of relationships to equipmentChassis resources. | [optional] 
**Device** | [**AssetDeviceRegistrationRelationship[]**](AssetDeviceRegistrationRelationship.md) | An array of relationships to assetDeviceRegistration resources. | [optional] [readonly] 
**Distributable** | [**FirmwareDistributableRelationship**](FirmwareDistributableRelationship.md) |  | [optional] 
**NetworkElements** | [**NetworkElementRelationship[]**](NetworkElementRelationship.md) | An array of relationships to networkElement resources. | [optional] 
**Release** | [**SoftwarerepositoryReleaseRelationship**](SoftwarerepositoryReleaseRelationship.md) |  | [optional] 
**Server** | [**ComputePhysicalRelationship[]**](ComputePhysicalRelationship.md) | An array of relationships to computePhysical resources. | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightFirmwareUpgradeImpact  -AccountMoid null `
 -ClassId null `
 -CreateTime null `
 -DomainGroupMoid null `
 -ModTime null `
 -Moid null `
 -ObjectType null `
 -Owners null `
 -SharedScope null `
 -Tags null `
 -VersionContext null `
 -Ancestors null `
 -Parent null `
 -PermissionResources null `
 -DisplayNames null `
 -Components null `
 -ComputationState null `
 -ExcludeComponents null `
 -Impacts null `
 -Summary null `
 -Chassis null `
 -Device null `
 -Distributable null `
 -NetworkElements null `
 -Release null `
 -Server null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

