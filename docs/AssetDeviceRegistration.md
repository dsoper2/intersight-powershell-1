# AssetDeviceRegistration
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
**ApiVersion** | **Int64** | The version of the connector API, describes the capability of the connector&#39;s framework. If the version is lower than the current minimum supported version defined in the service managing the connection, the device connector will be connected with limited capabilities until the device connector is upgraded to a fully supported version. For example if a device connector that was released without delta inventory capabilities registers and connects to Intersight, inventory collection may be disabled until it has been upgraded. | [optional] [readonly] 
**AppPartitionNumber** | **Int64** | The partition number corresponding to the instance of the Proxy App which is managing the web-socket to the device connector. | [optional] [readonly] 
**ConnectionId** | **String** | The unique identifier for the current connection. The identifier persists across network connectivity loss and is reset on device connector process restart or platform administrator toggle of the Intersight connectivity. The connectionId can be used by services that need to interact with stateful plugins running in the device connector process. For example if a service schedules an inventory in a devices job scheduler plugin at registration it is not necessary to reschedule the job if the device loses network connectivity due to an Intersight service upgrade or intermittent network issues in the devices datacenter. | [optional] [readonly] 
**ConnectionReason** | **String** | If &#39;connectionStatus&#39; is not equal to Connected, connectionReason provides further details about why the device is not connected with Intersight. | [optional] [readonly] 
**ConnectionStatus** | **String** | The status of the persistent connection between the device connector and Intersight. | [optional] [readonly] [default to ""]
**ConnectionStatusLastChangeTime** | **System.DateTime** | The last time at which the &#39;connectionStatus&#39; property value changed. If connectionStatus is Connected, this time can be interpreted as the starting time since which a persistent connection has been maintained between Intersight and Device Connector. If connectionStatus is NotConnected, this time can be interpreted as the last time the device connector was connected with Intersight. | [optional] [readonly] 
**ConnectorVersion** | **String** | The version of the device connector running on the managed device. | [optional] [readonly] 
**DeviceExternalIpAddress** | **String** | The IP Address of the managed device as seen from Intersight at the time of registration. This could be the IP address of the managed device&#39;s interface which has a route to the internet or a NAT IP addresss when the managed device is deployed in a private network. | [optional] [readonly] 
**ProxyApp** | **String** | The name of the app which will proxy the messages to the device connector. | [optional] [readonly] 
**AccessKeyId** | **String** | An identifier for the credential used by the device connector to authenticate with the Intersight web socket gateway. | [optional] 
**ClaimedByUserName** | **String** | The name of the user who claimed the device for the account. | [optional] [readonly] 
**ClaimedTime** | **System.DateTime** | The date and time at which the device was claimed to this account. | [optional] [readonly] 
**DeviceHostname** | **String[]** |  | [optional] 
**DeviceIpAddress** | **String[]** |  | [optional] 
**ExecutionMode** | **String** | Indicates if the platform is an actual device or an emulated device for testing, demos, etc. Permitted values are [Normal, Emulator, ContainerEmulator]. | [optional] [default to ""]
**ParentSignature** | [**AssetParentConnectionSignature**](AssetParentConnectionSignature.md) |  | [optional] 
**VarPid** | **String[]** |  | [optional] 
**PlatformType** | **String** | The platform type on which device connector is executing. | [optional] [default to ""]
**PublicAccessKey** | **String** | The device connector&#39;s public key used by Intersight to authenticate a connection from the device connector. The public key is used to verify that the signature a device connector sends on connect has been signed by the connector&#39;s private key stored on the device&#39;s filesystem. Must be a PEM encoded RSA public key string. | [optional] [readonly] 
**ReadOnly** | **Boolean** | Flag reported by devices to indicate an administrator of the device has disabled management operations of the device connector and only monitoring is permitted. | [optional] [readonly] 
**Serial** | **String[]** |  | [optional] 
**Vendor** | **String** | The vendor of the managed device. | [optional] [readonly] 
**Account** | [**IamAccountRelationship**](IamAccountRelationship.md) |  | [optional] 
**ClaimedByUser** | [**IamUserRelationship**](IamUserRelationship.md) |  | [optional] 
**ClusterMembers** | [**AssetClusterMemberRelationship[]**](AssetClusterMemberRelationship.md) | An array of relationships to assetClusterMember resources. | [optional] [readonly] 
**DeviceClaim** | [**AssetDeviceClaimRelationship**](AssetDeviceClaimRelationship.md) |  | [optional] 
**DeviceConfiguration** | [**AssetDeviceConfigurationRelationship**](AssetDeviceConfigurationRelationship.md) |  | [optional] 
**DomainGroup** | [**IamDomainGroupRelationship**](IamDomainGroupRelationship.md) |  | [optional] 
**ParentConnection** | [**AssetDeviceRegistrationRelationship**](AssetDeviceRegistrationRelationship.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightAssetDeviceRegistration  -AccountMoid null `
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
 -ApiVersion null `
 -AppPartitionNumber null `
 -ConnectionId null `
 -ConnectionReason null `
 -ConnectionStatus null `
 -ConnectionStatusLastChangeTime null `
 -ConnectorVersion null `
 -DeviceExternalIpAddress null `
 -ProxyApp null `
 -AccessKeyId null `
 -ClaimedByUserName null `
 -ClaimedTime null `
 -DeviceHostname null `
 -DeviceIpAddress null `
 -ExecutionMode null `
 -ParentSignature null `
 -VarPid null `
 -PlatformType null `
 -PublicAccessKey null `
 -ReadOnly null `
 -Serial null `
 -Vendor null `
 -Account null `
 -ClaimedByUser null `
 -ClusterMembers null `
 -DeviceClaim null `
 -DeviceConfiguration null `
 -DomainGroup null `
 -ParentConnection null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

