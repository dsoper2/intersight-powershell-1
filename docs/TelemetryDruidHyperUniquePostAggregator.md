# TelemetryDruidHyperUniquePostAggregator
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The post-aggregator type. | 
**Name** | **String** | Output name for the post-aggregator. | [optional] 
**FieldName** | **String** | The name field value of the hyperUnique aggregator. | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightTelemetryDruidHyperUniquePostAggregator  -Type null `
 -Name null `
 -FieldName null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

