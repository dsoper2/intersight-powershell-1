# MemoryAbstractUnitAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdminState** | **String** | This represents the administrative state of the memory unit on a server. | [optional] [readonly] 
**ArrayId** | **Int64** | This represents the memory array to which the memory unit belongs to. | [optional] [readonly] 
**Bank** | **Int64** | This represents the memory bank of the memory unit on a server. | [optional] [readonly] 
**Capacity** | **String** | This represents the memory capacity in MiB of the memory unit on a server. | [optional] [readonly] 
**Clock** | **String** | This represents the clock of the memory unit on a server. | [optional] [readonly] 
**FormFactor** | **String** | This represents the form factor of the memory unit on a server. | [optional] [readonly] 
**Latency** | **String** | This represents the latency of the memory unit on a server. | [optional] [readonly] 
**Location** | **String** | This represents the location of the memory unit on a server. | [optional] [readonly] 
**OperPowerState** | **String** | This represents the operational power state of the memory unit on a server. | [optional] [readonly] 
**OperState** | **String** | This represents the operational state of the memory unit on a server. | [optional] [readonly] 
**Operability** | **String** | This represents the operability of the memory unit on a server. | [optional] [readonly] 
**Presence** | **String** | This represents the presence state of the memory unit on a server. | [optional] [readonly] 
**Set** | **Int64** | This represents the set of the memory unit on a server. | [optional] [readonly] 
**Speed** | **String** | This represents the speed of the memory unit on a server. | [optional] [readonly] 
**Thermal** | **String** | This represents the thremal state of the memory unit on a server. | [optional] [readonly] 
**Type** | **String** | This represents the memory type of the memory unit on a server. | [optional] [readonly] 
**Visibility** | **String** | This represents the visibility of the memory unit on a server. | [optional] [readonly] 
**Width** | **String** | This represents the width of the memory unit on a server. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightMemoryAbstractUnitAllOf  -AdminState null `
 -ArrayId null `
 -Bank null `
 -Capacity null `
 -Clock null `
 -FormFactor null `
 -Latency null `
 -Location null `
 -OperPowerState null `
 -OperState null `
 -Operability null `
 -Presence null `
 -Set null `
 -Speed null `
 -Thermal null `
 -Type null `
 -Visibility null `
 -Width null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

