# WorkflowTargetDataType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClassId** | **String** | The concrete type of this complex type. Its value must be the same as the &#39;objectType&#39; property. The OpenAPI document references this property as a discriminator value. | [readonly] 
**ObjectType** | **String** | The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types. | 
**Default** | [**WorkflowDefaultValue**](WorkflowDefaultValue.md) |  | [optional] 
**Description** | **String** | Provide a detailed description of the data type. | [optional] 
**Label** | **String** | Descriptive label for the data type. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), space ( ) or an underscore (_). The first and last character in label must be an alphanumeric character. | [optional] 
**Name** | **String** | Descriptive name for the data type. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-) or an underscore (_). The first and last character in name must be an alphanumeric character. | [optional] 
**Required** | **Boolean** | Specifies whether this parameter is required. The field is applicable for task and workflow. | [optional] 
**CustomDataTypeProperties** | [**WorkflowCustomDataProperty**](WorkflowCustomDataProperty.md) |  | [optional] 
**IsArray** | **Boolean** | When this property is true then an array of targets can be passed as input. | [optional] 
**Max** | **Int64** | Specify the maximum value of the array. | [optional] 
**Min** | **Int64** | Specify the minimum value of the array. | [optional] 
**Properties** | [**WorkflowTargetProperty[]**](WorkflowTargetProperty.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightWorkflowTargetDataType  -ClassId null `
 -ObjectType null `
 -Default null `
 -Description null `
 -Label null `
 -Name null `
 -Required null `
 -CustomDataTypeProperties null `
 -IsArray null `
 -Max null `
 -Min null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

