# PkixRsaAlgorithm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClassId** | **String** | The concrete type of this complex type. Its value must be the same as the &#39;objectType&#39; property. The OpenAPI document references this property as a discriminator value. | [readonly] 
**ObjectType** | **String** | The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types. | 
**Name** | **String** | Name of the key generation algorithm. | [optional] [readonly] [default to "RSA"]
**Modulus** | **Int32** | The length of the RSA key, expressed in bits, for both public and private keys. | [optional] [default to 2048]

## Examples

- Prepare the resource
```powershell
Initialize-IntersightPkixRsaAlgorithm  -ClassId null `
 -ObjectType null `
 -Name null `
 -Modulus null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

