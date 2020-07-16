# VnicVlanSettingsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedVlans** | **String** | Allowed VLAN IDs of the virtual interface. | [optional] 
**DefaultVlan** | **Int64** | Native VLAN ID of the virtual interface or the corresponding vethernet on the peer Fabric Interconnect to which the virtual interface is connected. Setting the ID to 0 will not associate any native VLAN to the traffic on the virtual interface. | [optional] 
**Mode** | **String** | Option to determine if the port can carry single VLAN (Access) or multiple VLANs (Trunk) traffic. | [optional] [default to "ACCESS"]

## Examples

- Prepare the resource
```powershell
Initialize-IntersightVnicVlanSettingsAllOf  -AllowedVlans null `
 -DefaultVlan null `
 -Mode null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
