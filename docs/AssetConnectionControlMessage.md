# AssetConnectionControlMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClassId** | **String** | The concrete type of this complex type. Its value must be the same as the &#39;objectType&#39; property. The OpenAPI document references this property as a discriminator value. | [readonly] 
**ObjectType** | **String** | The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types. | 
**Account** | **String** | The account id to which the device belongs. | [optional] 
**ConnectorVersion** | **String** | The version of the device connector currently running on the platform. Deprecated by newer connectors that will report this directly to the device connector gateway in a websocket header, but included to continue to support older versions which report any version change after connect. | [optional] 
**DeviceId** | **String** | The Moid of the device under change. Used to route the message to a devices connection. | [optional] 
**DomainGroup** | **String** | The domain group id to which the device belongs. | [optional] 
**Evict** | **Boolean** | Flag to force any open connections to be evicted. Used in case device has been deleted or blacklisted. | [optional] 
**Leadership** | **String** | The current leadership of a device cluster member. | [optional] [default to "Unknown"]
**NewIdentity** | **String** | The new identity assigned to a device on ownership change (claim/unclaim). | [optional] 
**Partition** | **Int64** | The partition the device was last connected to, used to address the control message to the device connector gateway instance holding the devices connection. | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightAssetConnectionControlMessage  -ClassId null `
 -ObjectType null `
 -Account null `
 -ConnectorVersion null `
 -DeviceId null `
 -DomainGroup null `
 -Evict null `
 -Leadership null `
 -NewIdentity null `
 -Partition null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

