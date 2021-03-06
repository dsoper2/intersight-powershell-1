# InventoryInventoryMoAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MoDn** | **String** | The UCS DN of the MO for which the latest inventory to be fetched. If this property is empty and moId property has the Moid of the MO to be updated, the Moid will be used. If this property is empty and moId is also empty, all the MOs of the given moType will be updated. | [optional] 
**MoId** | **String** | The MO id of an MO for which the latest inventory to be fetched. If this property is empty and moDn property has the UCS DN of the MO to be updated, the DN will be used. If this property is empty and moDn is also empty, all the MOs of the given moType will be updated. | [optional] 
**MoType** | **String** | The type of the MO for which the latest inventory to be fetched. | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightInventoryInventoryMoAllOf  -MoDn null `
 -MoId null `
 -MoType null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

