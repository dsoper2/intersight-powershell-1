# IamLdapBasePropertiesAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | Role and locale information of the user. | [optional] 
**BaseDn** | **String** | Base Distinguished Name (DN). Starting point from where server will search for users and groups. | [optional] 
**BindDn** | **String** | Distinguished Name (DN) of the user, that is used to authenticate against LDAP servers. | [optional] 
**BindMethod** | **String** | Authentication method to access LDAP servers. | [optional] [default to "LoginCredentials"]
**Domain** | **String** | The IPv4 domain that all users must be in. | [optional] 
**EnableEncryption** | **Boolean** | If enabled, the endpoint encrypts all information it sends to the LDAP server. | [optional] 
**EnableGroupAuthorization** | **Boolean** | If enabled, user authorization is also done at the group level for LDAP users not in the local user database. | [optional] 
**VarFilter** | **String** | Criteria to identify entries in search requests. | [optional] 
**GroupAttribute** | **String** | Groups to which an LDAP entry belongs. | [optional] 
**IsPasswordSet** | **Boolean** | Indicates whether the value of the &#39;password&#39; property has been set. | [optional] [readonly] 
**NestedGroupSearchDepth** | **Int64** | Search depth to look for a nested LDAP group in an LDAP group map. | [optional] 
**Password** | **String** | Password of the user, that is used to authenticate. | [optional] 
**Timeout** | **Int64** | LDAP authentication timeout duration, in seconds. | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-IntersightIamLdapBasePropertiesAllOf  -Attribute null `
 -BaseDn null `
 -BindDn null `
 -BindMethod null `
 -Domain null `
 -EnableEncryption null `
 -EnableGroupAuthorization null `
 -VarFilter null `
 -GroupAttribute null `
 -IsPasswordSet null `
 -NestedGroupSearchDepth null `
 -Password null `
 -Timeout null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

