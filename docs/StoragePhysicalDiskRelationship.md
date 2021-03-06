# StoragePhysicalDiskRelationship
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClassId** | **String** | The concrete type of this complex type. Its value must be the same as the &#39;objectType&#39; property. The OpenAPI document references this property as a discriminator value. | [readonly] 
**ObjectType** | **String** | The fully-qualified type of this managed object, i.e. the class name. This property is optional. The ObjectType is implied from the URL path. If specified, the value of objectType must match the class name specified in the URL path. | [readonly] 
**Moid** | **String** | The unique identifier of this Managed Object instance. | [optional] 
**Selector** | **String** | An OData $filter expression which describes the REST resource to be referenced. This field may be set instead of &#39;moid&#39; by clients. 1. If &#39;moid&#39; is set this field is ignored. 1. If &#39;selector&#39; is set and &#39;moid&#39; is empty/absent from the request, Intersight determines the Moid of the resource matching the filter expression and populates it in the MoRef that is part of the object instance being inserted/updated to fulfill the REST request. An error is returned if the filter matches zero or more than one REST resource. An example filter string is: Serial eq &#39;3AA8B7T11&#39;. | [optional] [readonly] 
**Link** | **String** | A URL to an instance of the &#39;mo.MoRef&#39; class. | [optional] 
**AccountMoid** | **String** | The Account ID for this managed object. | [optional] [readonly] 
**CreateTime** | **System.DateTime** | The time when this managed object was created. | [optional] [readonly] 
**DomainGroupMoid** | **String** | The DomainGroup ID for this managed object. | [optional] [readonly] 
**ModTime** | **System.DateTime** | The time when this managed object was last modified. | [optional] [readonly] 
**Owners** | **String[]** |  | [optional] 
**SharedScope** | **String** | Intersight provides pre-built workflows, tasks and policies to end users through global catalogs. Objects that are made available through global catalogs are said to have a &#39;shared&#39; ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs. | [optional] [readonly] 
**Tags** | [**MoTag[]**](MoTag.md) |  | [optional] 
**VersionContext** | [**MoVersionContext**](MoVersionContext.md) |  | [optional] 
**Ancestors** | [**MoBaseMoRelationship[]**](MoBaseMoRelationship.md) | An array of relationships to moBaseMo resources. | [optional] [readonly] 
**Parent** | [**MoBaseMoRelationship**](MoBaseMoRelationship.md) |  | [optional] 
**PermissionResources** | [**MoBaseMoRelationship[]**](MoBaseMoRelationship.md) | An array of relationships to moBaseMo resources. | [optional] [readonly] 
**DisplayNames** | [**System.Collections.Hashtable**](Array.md) | a map of display names for a resource. | [optional] [readonly] 
**DeviceMoId** | **String** | The database identifier of the registered device of an object. | [optional] [readonly] 
**Dn** | **String** | The Distinguished Name unambiguously identifies an object in the system. | [optional] [readonly] 
**Rn** | **String** | The Relative Name uniquely identifies an object within a given context. | [optional] [readonly] 
**Model** | **String** | This field identifies the model of the given component. | [optional] [readonly] 
**Revision** | **String** | This field identifies the revision of the given component. | [optional] [readonly] 
**Serial** | **String** | This field identifies the serial of the given component. | [optional] [readonly] 
**Vendor** | **String** | This field identifies the vendor of the given component. | [optional] [readonly] 
**BlockSize** | **String** | The block size of the physical disk in bytes. | [optional] [readonly] 
**Bootable** | **String** | This field identifies the disk drive as bootable if set to true. | [optional] [readonly] 
**ConfigurationCheckpoint** | **String** | The current configuration checkpoint of the physical disk. | [optional] [readonly] 
**ConfigurationState** | **String** | The current configuration state of the physical disk. | [optional] [readonly] 
**DiscoveredPath** | **String** | The discovered path of the physical disk. | [optional] [readonly] 
**DiskId** | **String** | This field identifies the ID assigned to physical disks. | [optional] [readonly] 
**DiskState** | **String** | This field identifies the health of the disk. | [optional] [readonly] 
**DriveFirmware** | **String** | This field identifies the disk firmware running in the disk. | [optional] 
**DriveState** | **String** | The drive state as reported by the controller. | [optional] [readonly] 
**FdeCapable** | **String** | Full-Disk Encryption capability parameter of the physical disk. | [optional] 
**HotSpareType** | **String** | Type of hotspare configured on the physical disk. | [optional] 
**LinkSpeed** | **String** | The speed of the link between the drive and the controller. | [optional] [readonly] 
**LinkState** | **String** | The current link state of the physical disk. | [optional] [readonly] 
**NumBlocks** | **String** | The number of blocks present on the physical disk. | [optional] [readonly] 
**OperPowerState** | **String** | Operational power of the physical disk. | [optional] [readonly] 
**OperQualifierReason** | **String** | This reason for the operational status of the disk. | [optional] [readonly] 
**Operability** | **String** | This field identifies the disk operability of the disk. | [optional] [readonly] 
**PhysicalBlockSize** | **String** | The block size of the installed physical disk. | [optional] [readonly] 
**VarPid** | **String** | This field identifies the Product ID for physicalDisk. | [optional] [readonly] 
**Presence** | **String** | The presence state of the physical disk. | [optional] [readonly] 
**Protocol** | **String** | This field identifies the disk protocol used for communication. | [optional] [readonly] 
**RawSize** | **String** | The raw size of the physical disk in MB. | [optional] [readonly] 
**Secured** | **String** | This field identifies whether the disk is encrypted. | [optional] 
**Size** | **String** | The size of the physical disk in MB. | [optional] [readonly] 
**Thermal** | **String** | Thermal state of the physical disk. | [optional] [readonly] 
**Type** | **String** | This field identifies the type of the physical disk. | [optional] [readonly] 
**VariantType** | **String** | The variant type of the physical disk. | [optional] [readonly] 
**InventoryDeviceInfo** | [**InventoryDeviceInfoRelationship**](InventoryDeviceInfoRelationship.md) |  | [optional] 
**LocatorLed** | [**EquipmentLocatorLedRelationship**](EquipmentLocatorLedRelationship.md) |  | [optional] 
**PhysicalDiskExtensions** | [**StoragePhysicalDiskExtensionRelationship[]**](StoragePhysicalDiskExtensionRelationship.md) | An array of relationships to storagePhysicalDiskExtension resources. | [optional] 
**RegisteredDevice** | [**AssetDeviceRegistrationRelationship**](AssetDeviceRegistrationRelationship.md) |  | [optional] 
**RunningFirmware** | [**FirmwareRunningFirmwareRelationship[]**](FirmwareRunningFirmwareRelationship.md) | An array of relationships to firmwareRunningFirmware resources. | [optional] [readonly] 
**SasPorts** | [**StorageSasPortRelationship[]**](StorageSasPortRelationship.md) | An array of relationships to storageSasPort resources. | [optional] [readonly] 
**StorageController** | [**StorageControllerRelationship**](StorageControllerRelationship.md) |  | [optional] 
**StorageEnclosure** | [**StorageEnclosureRelationship**](StorageEnclosureRelationship.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightStoragePhysicalDiskRelationship  -ClassId null `
 -ObjectType null `
 -Moid null `
 -Selector null `
 -Link null `
 -AccountMoid null `
 -CreateTime null `
 -DomainGroupMoid null `
 -ModTime null `
 -Owners null `
 -SharedScope null `
 -Tags null `
 -VersionContext null `
 -Ancestors null `
 -Parent null `
 -PermissionResources null `
 -DisplayNames null `
 -DeviceMoId null `
 -Dn null `
 -Rn null `
 -Model null `
 -Revision null `
 -Serial null `
 -Vendor null `
 -BlockSize null `
 -Bootable null `
 -ConfigurationCheckpoint null `
 -ConfigurationState null `
 -DiscoveredPath null `
 -DiskId null `
 -DiskState null `
 -DriveFirmware null `
 -DriveState null `
 -FdeCapable null `
 -HotSpareType null `
 -LinkSpeed null `
 -LinkState null `
 -NumBlocks null `
 -OperPowerState null `
 -OperQualifierReason null `
 -Operability null `
 -PhysicalBlockSize null `
 -VarPid null `
 -Presence null `
 -Protocol null `
 -RawSize null `
 -Secured null `
 -Size null `
 -Thermal null `
 -Type null `
 -VariantType null `
 -InventoryDeviceInfo null `
 -LocatorLed null `
 -PhysicalDiskExtensions null `
 -RegisteredDevice null `
 -RunningFirmware null `
 -SasPorts null `
 -StorageController null `
 -StorageEnclosure null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

