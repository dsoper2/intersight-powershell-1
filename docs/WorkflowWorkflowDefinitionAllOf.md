# WorkflowWorkflowDefinitionAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultVersion** | **Boolean** | When true this will be the workflow version that is used when a specific workflow definition version is not specified. The default version is used when user executes a workflow without specifying a version or when workflow is included in another workflow without a specific version. The very first workflow definition created with a name will be set as the default version, after that user can explicitly set any version of the workflow definition as the default version. | [optional] 
**Description** | **String** | The description for this workflow. | [optional] 
**InputDefinition** | [**WorkflowBaseDataType[]**](WorkflowBaseDataType.md) |  | [optional] 
**Label** | **String** | A user friendly short name to identify the workflow. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ) or an underscore (_). | [optional] 
**LicenseEntitlement** | **String** | License entitlement required to run this workflow. It is calculated based on the highest license requirement of all its tasks. | [optional] [readonly] [default to "Base"]
**MaxTaskCount** | **Int64** | The maximum number of tasks that can be executed on this workflow. | [optional] [readonly] 
**Name** | **String** | The name for this workflow. You can have multiple versions of the workflow with the same name. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.) or an underscore (_). | [optional] 
**OutputDefinition** | [**WorkflowBaseDataType[]**](WorkflowBaseDataType.md) |  | [optional] 
**OutputParameters** | [**AnyType**](.md) | The output mappings for the workflow. The outputs for worflows will generally be task output variables that we want to export out at the end of the workflow. The format to specify the mapping is &#39;${Source.output.JsonPath}&#39;. &#39;Source&#39; is the name of the task within the workflow. You can map any task output to a workflow output as long as the types are compatible. Following this is JSON path expression to extract JSON fragment from source&#39;s output. | [optional] 
**Properties** | [**WorkflowWorkflowProperties**](WorkflowWorkflowProperties.md) |  | [optional] 
**Tasks** | [**WorkflowWorkflowTask[]**](WorkflowWorkflowTask.md) |  | [optional] 
**UiRenderingData** | [**AnyType**](.md) | This will hold the data needed for workflow to be rendered in the user interface. | [optional] 
**ValidationInformation** | [**WorkflowValidationInformation**](WorkflowValidationInformation.md) |  | [optional] 
**Version** | **Int64** | The version of the workflow to support multiple versions. | [optional] 
**Catalog** | [**WorkflowCatalogRelationship**](WorkflowCatalogRelationship.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightWorkflowWorkflowDefinitionAllOf  -DefaultVersion null `
 -Description null `
 -InputDefinition null `
 -Label null `
 -LicenseEntitlement null `
 -MaxTaskCount null `
 -Name null `
 -OutputDefinition null `
 -OutputParameters null `
 -Properties null `
 -Tasks null `
 -UiRenderingData null `
 -ValidationInformation null `
 -Version null `
 -Catalog null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

