# FirmwareUpgradeStatusRelationship
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
**DownloadError** | **String** | The error message from the endpoint during the download. | [optional] 
**DownloadMessage** | [**AnyType**](.md) | The message from the endpoint during the download.} type: string | [optional] 
**DownloadPercentage** | **Int64** | The percentage of the image downloaded in the endpoint. | [optional] 
**DownloadProgress** | **Int64** | The download progress of the file represented as a percentage between 0% and 100%. If progress reporting is not possible a value of -1 is sent. | [optional] 
**DownloadRetries** | **Int64** | The number of retries the plugin attempted before succeeding or failing the download. | [optional] 
**DownloadStage** | **String** | The image download stages. Example:downloading, flashing. | [optional] 
**EpPowerStatus** | **String** | The server power status after the upgrade request is submitted in the endpoint. | [optional] [default to "none"]
**OverallError** | **String** | The reason for the operation failure. | [optional] 
**OverallPercentage** | **Int64** | The overall percentage of the operation. | [optional] 
**Overallstatus** | **String** | The overall status of the operation. | [optional] [default to "none"]
**PendingType** | **String** | Pending reason for the upgrade waiting. | [optional] [default to "none"]
**Sha256checksum** | [**SystemByte**](SystemByte.md) | The sha256checksum of the downloaded file as calculated by the download plugin after successfully downloading a file. | [optional] 
**Upgrade** | [**FirmwareUpgradeBaseRelationship**](FirmwareUpgradeBaseRelationship.md) |  | [optional] 
**Workflow** | [**WorkflowWorkflowInfoRelationship**](WorkflowWorkflowInfoRelationship.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightFirmwareUpgradeStatusRelationship  -ClassId null `
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
 -DownloadError null `
 -DownloadMessage null `
 -DownloadPercentage null `
 -DownloadProgress null `
 -DownloadRetries null `
 -DownloadStage null `
 -EpPowerStatus null `
 -OverallError null `
 -OverallPercentage null `
 -Overallstatus null `
 -PendingType null `
 -Sha256checksum null `
 -Upgrade null `
 -Workflow null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

