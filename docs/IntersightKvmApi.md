# Intersight.Intersight/Api.IntersightKvmApi

All URIs are relative to *https://intersight.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-IntersightKvmPolicy**](IntersightKvmApi.md#New-IntersightKvmPolicy) | **POST** /api/v1/kvm/Policies | Create a &#39;kvm.Policy&#39; resource.
[**Remove-IntersightKvmPolicy**](IntersightKvmApi.md#Remove-IntersightKvmPolicy) | **DELETE** /api/v1/kvm/Policies/{Moid} | Delete a &#39;kvm.Policy&#39; resource.
[**Get-IntersightKvmKvmSessionByMoid**](IntersightKvmApi.md#Get-IntersightKvmKvmSessionByMoid) | **GET** /api/v1/kvm/KvmSessions/{Moid} | Read a &#39;kvm.KvmSession&#39; resource.
[**Get-IntersightKvmKvmSessionList**](IntersightKvmApi.md#Get-IntersightKvmKvmSessionList) | **GET** /api/v1/kvm/KvmSessions | Read a &#39;kvm.KvmSession&#39; resource.
[**Get-IntersightKvmPolicyByMoid**](IntersightKvmApi.md#Get-IntersightKvmPolicyByMoid) | **GET** /api/v1/kvm/Policies/{Moid} | Read a &#39;kvm.Policy&#39; resource.
[**Get-IntersightKvmPolicyList**](IntersightKvmApi.md#Get-IntersightKvmPolicyList) | **GET** /api/v1/kvm/Policies | Read a &#39;kvm.Policy&#39; resource.
[**Set-IntersightKvmPolicy**](IntersightKvmApi.md#Set-IntersightKvmPolicy) | **PATCH** /api/v1/kvm/Policies/{Moid} | Update a &#39;kvm.Policy&#39; resource.
[**Update-IntersightKvmPolicy**](IntersightKvmApi.md#Update-IntersightKvmPolicy) | **POST** /api/v1/kvm/Policies/{Moid} | Update a &#39;kvm.Policy&#39; resource.


<a name="New-IntersightKvmPolicy"></a>
# **New-IntersightKvmPolicy**
> KvmPolicy New-IntersightKvmPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KvmPolicy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IfMatch] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IfNoneMatch] <String><br>

Create a 'kvm.Policy' resource.

### Example
```powershell
Import-Module -Name Intersight

$Configuration = Get-IntersightConfiguration
# Configure API key authorization: cookieAuth
$Configuration["ApiKey"]["X-Starship-Token"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Starship-Token"] = "Bearer"
# Configure HTTP basic authorization: http_signature
$Configuration["Username"] = "YOUR_USERNAME";
$Configuration["Password"] = "YOUR_PASSWORD";
# Configure OAuth2 access token for authorization: oAuth2
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$KvmPolicy = (Initialize-kvm.Policy-AccountMoid "AccountMoid_example" -ClassId "ClassId_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Moid "Moid_example" -ObjectType "ObjectType_example" -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @((Initialize-mo.Tag-Key "Key_example" -Value "Value_example")) -VersionContext (Initialize-mo.VersionContext-ClassId "ClassId_example" -ObjectType "ObjectType_example" -InterestedMos @((Initialize-mo.MoRef-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example")) -RefMo (Initialize-mo.MoRef-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example") -Timestamp Get-Date -Version "Version_example" -VersionType "VersionType_example") -Ancestors @((Initialize-mo.BaseMo.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @((Initialize-mo.Tag-Key "Key_example" -Value "Value_example")) -VersionContext (Initialize-mo.VersionContext-ClassId "ClassId_example" -ObjectType "ObjectType_example" -InterestedMos @() -RefMo  -Timestamp Get-Date -Version "Version_example" -VersionType "VersionType_example") -Ancestors @((Initialize-mo.BaseMo.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO")) -Parent  -PermissionResources @() -DisplayNames "TODO")) -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -EnableLocalServerVideo $false -EnableVideoEncryption $false -Enabled $false -MaximumSessions 123 -RemotePort 123 -Organization (Initialize-organization.Organization.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Account (Initialize-iam.Account.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -Status "Status_example" -Var0LicenseReservationOp (Initialize-license.LicenseReservationOp.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -AuthCode "AuthCode_example" -AuthCodeInstalled $false -ConfirmCode "ConfirmCode_example" -GenerateRequestCode $false -GenerateReturnCode $false -RequestCode "RequestCode_example" -ReturnCode "ReturnCode_example" -Account (Initialize-iam.Account.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -Status "Status_example" -Var0LicenseReservationOp (Initialize-license.LicenseReservationOp.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -AuthCode "AuthCode_example" -AuthCodeInstalled $false -ConfirmCode "ConfirmCode_example" -GenerateRequestCode $false -GenerateReturnCode $false -RequestCode "RequestCode_example" -ReturnCode "ReturnCode_example" -Account ) -AppRegistrations @((Initialize-iam.AppRegistration.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -ClientId "ClientId_example" -ClientName "ClientName_example" -ClientSecret "ClientSecret_example" -ClientType "ClientType_example" -Description "Description_example" -GrantTypes @("GrantTypes_example") -RedirectUris @("RedirectUris_example") -RenewClientSecret $false -ResponseTypes @("ResponseTypes_example") -RevocationTimestamp Get-Date -Revoke $false -Account  -OauthTokens @((Initialize-iam.OAuthToken.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -AccessExpirationTime Get-Date -ClientId "ClientId_example" -ClientIpAddress "ClientIpAddress_example" -ClientName "ClientName_example" -ExpirationTime Get-Date -LastLoginClient "LastLoginClient_example" -LastLoginTime Get-Date -TokenId "TokenId_example" -UserMeta (Initialize-iam.ClientMeta-ClassId "ClassId_example" -ObjectType "ObjectType_example" -DeviceModel "DeviceModel_example" -UserAgent "UserAgent_example") -AppRegistration (Initialize-iam.AppRegistration.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -ClientId "ClientId_example" -ClientName "ClientName_example" -ClientSecret "ClientSecret_example" -ClientType "ClientType_example" -Description "Description_example" -GrantTypes @("GrantTypes_example") -RedirectUris @("RedirectUris_example") -RenewClientSecret $false -ResponseTypes @("ResponseTypes_example") -RevocationTimestamp Get-Date -Revoke $false -Account  -OauthTokens @((Initialize-iam.OAuthToken.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -AccessExpirationTime Get-Date -ClientId "ClientId_example" -ClientIpAddress "ClientIpAddress_example" -ClientName "ClientName_example" -ExpirationTime Get-Date -LastLoginClient "LastLoginClient_example" -LastLoginTime Get-Date -TokenId "TokenId_example" -UserMeta (Initialize-iam.ClientMeta-ClassId "ClassId_example" -ObjectType "ObjectType_example" -DeviceModel "DeviceModel_example" -UserAgent "UserAgent_example") -AppRegistration  -Permission (Initialize-iam.Permission.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Account  -EndPointRoles @((Initialize-iam.EndPointRole.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -RoleType "RoleType_example" -Type "Type_example" -Account  -EndPointPrivileges @((Initialize-iam.EndPointPrivilege.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Type "Type_example" -System (Initialize-iam.System.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -EndPointPrivileges @((Initialize-iam.EndPointPrivilege.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Type "Type_example" -System (Initialize-iam.System.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -EndPointPrivileges @() -EndPointRoles @((Initialize-iam.EndPointRole.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -RoleType "RoleType_example" -Type "Type_example" -Account  -EndPointPrivileges @() -System )) -Idp (Initialize-iam.Idp.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -DomainName "DomainName_example" -IdpEntityId "IdpEntityId_example" -Metadata "Metadata_example" -Name "Name_example" -Type "Type_example" -Account  -LdapPolicy (Initialize-iam.LdapPolicy.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -BaseProperties (Initialize-iam.LdapBaseProperties-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Attribute "Attribute_example" -BaseDn "BaseDn_example" -BindDn "BindDn_example" -BindMethod "BindMethod_example" -Domain "Domain_example" -EnableEncryption $false -EnableGroupAuthorization $false -VarFilter "VarFilter_example" -GroupAttribute "GroupAttribute_example" -IsPasswordSet $false -NestedGroupSearchDepth 123 -Password "Password_example" -Timeout 123) -DnsParameters (Initialize-iam.LdapDnsParameters-ClassId "ClassId_example" -ObjectType "ObjectType_example" -SearchDomain "SearchDomain_example" -SearchForest "SearchForest_example" -Source "Source_example") -EnableDns $false -Enabled $false -UserSearchPrecedence "UserSearchPrecedence_example" -Var0Idp (Initialize-iam.Idp.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -DomainName "DomainName_example" -IdpEntityId "IdpEntityId_example" -Metadata "Metadata_example" -Name "Name_example" -Type "Type_example" -Account  -LdapPolicy (Initialize-iam.LdapPolicy.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -BaseProperties (Initialize-iam.LdapBaseProperties-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Attribute "Attribute_example" -BaseDn "BaseDn_example" -BindDn "BindDn_example" -BindMethod "BindMethod_example" -Domain "Domain_example" -EnableEncryption $false -EnableGroupAuthorization $false -VarFilter "VarFilter_example" -GroupAttribute "GroupAttribute_example" -IsPasswordSet $false -NestedGroupSearchDepth 123 -Password "Password_example" -Timeout 123) -DnsParameters (Initialize-iam.LdapDnsParameters-ClassId "ClassId_example" -ObjectType "ObjectType_example" -SearchDomain "SearchDomain_example" -SearchForest "SearchForest_example" -Source "Source_example") -EnableDns $false -Enabled $false -UserSearchPrecedence "UserSearchPrecedence_example" -Var0Idp  -ApplianceAccount  -Groups @((Initialize-iam.LdapGroup.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Domain "Domain_example" -Name "Name_example" -EndPointRole @() -LdapPolicy )) -Organization (Initialize-organization.Organization.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Account  -ResourceGroups @((Initialize-resource.Group.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -PerTypeCombinedSelector @((Initialize-resource.PerTypeCombinedSelector-ClassId "ClassId_example" -ObjectType "ObjectType_example" -CombinedSelector "CombinedSelector_example" -EmptyFilter $false -SelectorObjectType "SelectorObjectType_example")) -Qualifier "Qualifier_example" -Selectors @((Initialize-resource.Selector-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Selector "Selector_example")) -Account  -Organizations @()))) -Profiles @((Initialize-policy.AbstractConfigProfile.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Type "Type_example" -SrcTemplate (Initialize-policy.AbstractProfile.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Type "Type_example" -SrcTemplate (Initialize-policy.AbstractProfile.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Type "Type_example" -SrcTemplate )) -Action "Action_example" -ConfigContext (Initialize-policy.ConfigContext-ClassId "ClassId_example" -ObjectType "ObjectType_example" -ConfigState "ConfigState_example" -ControlAction "ControlAction_example" -ErrorState "ErrorState_example" -OperState "OperState_example"))) -Providers @((Initialize-iam.LdapProvider.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Port 123 -Server "Server_example" -LdapPolicy ))) -System  -UserPreferences @((Initialize-iam.UserPreference.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Preference "TODO" -UserUniqueIdentifier "UserUniqueIdentifier_example" -Idp  -IdpReference (Initialize-iam.IdpReference.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -DomainName "DomainName_example" -IdpEntityId "IdpEntityId_example" -MultiFactorAuthentication $false -Name "Name_example" -Account  -Idp  -UserPreferences @((Initialize-iam.UserPreference.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Preference "TODO" -UserUniqueIdentifier "UserUniqueIdentifier_example" -Idp  -IdpReference (Initialize-iam.IdpReference.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -DomainName "DomainName_example" -IdpEntityId "IdpEntityId_example" -MultiFactorAuthentication $false -Name "Name_example" -Account  -Idp  -UserPreferences @() -Usergroups @((Initialize-iam.UserGroup.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -Idp  -Idpreference  -Permissions @((Initialize-iam.Permission.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Account  -EndPointRoles @() -ResourceRoles @((Initialize-iam.ResourceRoles.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -EndPointRoles @() -Permission  -Resource  -Roles @((Initialize-iam.Role.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -PrivilegeNames @("PrivilegeNames_example") -Account  -PrivilegeSets @((Initialize-iam.PrivilegeSet.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -PrivilegeNames @("PrivilegeNames_example") -Account  -AssociatedPrivilegeSets @((Initialize-iam.PrivilegeSet.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -PrivilegeNames @("PrivilegeNames_example") -Account  -AssociatedPrivilegeSets @() -Privileges @((Initialize-iam.Privilege.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -HostnamePrefix "HostnamePrefix_example" -Method "Method_example" -Name "Name_example" -RestPath "RestPath_example" -UrlPrefix "UrlPrefix_example" -Account  -System )) -System )) -Privileges @((Initialize-iam.Privilege.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -HostnamePrefix "HostnamePrefix_example" -Method "Method_example" -Name "Name_example" -RestPath "RestPath_example" -UrlPrefix "UrlPrefix_example" -Account  -System )) -System )) -System )))) -Roles @((Initialize-iam.Role.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -PrivilegeNames @("PrivilegeNames_example") -Account  -PrivilegeSets @() -System )) -SessionLimits (Initialize-iam.SessionLimits.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -IdleTimeOut 123 -MaximumLimit 123 -PerUserLimit 123 -SessionTimeOut 123 -Account  -Permission ) -UserGroups @((Initialize-iam.UserGroup.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -Idp  -Idpreference  -Permissions @() -Qualifier (Initialize-iam.Qualifier.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -Value @("Value_example") -Usergroup ) -Users @((Initialize-iam.User.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -ClientIpAddress "ClientIpAddress_example" -Email "Email_example" -FirstName "FirstName_example" -LastLoginTime Get-Date -LastName "LastName_example" -Name "Name_example" -UserIdOrEmail "UserIdOrEmail_example" -UserType "UserType_example" -UserUniqueIdentifier "UserUniqueIdentifier_example" -ApiKeys @((Initialize-iam.ApiKey.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -HashAlgorithm "HashAlgorithm_example" -KeySpec (Initialize-pkix.KeyGenerationSpec-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Name "Name_example") -PrivateKey "PrivateKey_example" -Purpose "Purpose_example" -SigningAlgorithm "SigningAlgorithm_example" -Permission  -User (Initialize-iam.User.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -ClientIpAddress "ClientIpAddress_example" -Email "Email_example" -FirstName "FirstName_example" -LastLoginTime Get-Date -LastName "LastName_example" -Name "Name_example" -UserIdOrEmail "UserIdOrEmail_example" -UserType "UserType_example" -UserUniqueIdentifier "UserUniqueIdentifier_example" -ApiKeys @((Initialize-iam.ApiKey.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -HashAlgorithm "HashAlgorithm_example" -KeySpec (Initialize-pkix.KeyGenerationSpec-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Name "Name_example") -PrivateKey "PrivateKey_example" -Purpose "Purpose_example" -SigningAlgorithm "SigningAlgorithm_example" -Permission  -User )) -AppRegistrations @() -Idp  -Idpreference  -LocalUserPassword (Initialize-iam.LocalUserPassword.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -CurrentPassword "CurrentPassword_example" -NewPassword "NewPassword_example" -Password "TODO" -User ) -OauthTokens @() -Permissions @() -Sessions @((Initialize-iam.Session.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -AccountPermissions @((Initialize-iam.AccountPermissions-ClassId "ClassId_example" -ObjectType "ObjectType_example" -AccountIdentifier "AccountIdentifier_example" -AccountName "AccountName_example" -AccountStatus "AccountStatus_example" -Permissions @((Initialize-iam.PermissionReference-ClassId "ClassId_example" -ObjectType "ObjectType_example" -PermissionIdentifier "PermissionIdentifier_example" -PermissionName "PermissionName_example")))) -ClientIpAddress "ClientIpAddress_example" -Expiration Get-Date -IdleTimeExpiration Get-Date -LastLoginClient "LastLoginClient_example" -LastLoginTime Get-Date -Permission  -User ))))) -AppRegistrations @() -Idp  -Idpreference  -LocalUserPassword (Initialize-iam.LocalUserPassword.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -CurrentPassword "CurrentPassword_example" -NewPassword "NewPassword_example" -Password "TODO" -User ) -OauthTokens @() -Permissions @() -Sessions @((Initialize-iam.Session.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -AccountPermissions @((Initialize-iam.AccountPermissions-ClassId "ClassId_example" -ObjectType "ObjectType_example" -AccountIdentifier "AccountIdentifier_example" -AccountName "AccountName_example" -AccountStatus "AccountStatus_example" -Permissions @((Initialize-iam.PermissionReference-ClassId "ClassId_example" -ObjectType "ObjectType_example" -PermissionIdentifier "PermissionIdentifier_example" -PermissionName "PermissionName_example")))) -ClientIpAddress "ClientIpAddress_example" -Expiration Get-Date -IdleTimeExpiration Get-Date -LastLoginClient "LastLoginClient_example" -LastLoginTime Get-Date -Permission  -User )))))) -Users @())) -Qualifier (Initialize-iam.Qualifier.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -Value @("Value_example") -Usergroup ) -Users @())) -Users @()))) -Usergroups @() -Users @()))) -Usergroups @() -Users @()) -ApplianceAccount  -Groups @((Initialize-iam.LdapGroup.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Domain "Domain_example" -Name "Name_example" -EndPointRole @() -LdapPolicy )) -Organization  -Profiles @((Initialize-policy.AbstractConfigProfile.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -Type "Type_example" -SrcTemplate  -Action "Action_example" -ConfigContext (Initialize-policy.ConfigContext-ClassId "ClassId_example" -ObjectType "ObjectType_example" -ConfigState "ConfigState_example" -ControlAction "ControlAction_example" -ErrorState "ErrorState_example" -OperState "OperState_example"))) -Providers @((Initialize-iam.LdapProvider.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Port 123 -Server "Server_example" -LdapPolicy ))) -System  -UserPreferences @() -Usergroups @() -Users @()) -PrivilegeSets @() -Privileges @() -Roles @() -ServiceProvider (Initialize-iam.ServiceProvider.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -EntityId "EntityId_example" -Metadata "Metadata_example" -Name "Name_example" -System )))) -EndPointRoles @() -Idp  -PrivilegeSets @() -Privileges @() -Roles @() -ServiceProvider (Initialize-iam.ServiceProvider.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -EntityId "EntityId_example" -Metadata "Metadata_example" -Name "Name_example" -System )))) -System )) -ResourceRoles @((Initialize-iam.ResourceRoles.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -EndPointRoles @() -Permission  -Resource  -Roles @())) -Roles @() -SessionLimits (Initialize-iam.SessionLimits.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -IdleTimeOut 123 -MaximumLimit 123 -PerUserLimit 123 -SessionTimeOut 123 -Account  -Permission ) -UserGroups @() -Users @()) -User )) -Permission  -Roles @() -User ) -Permission  -User )) -Permission  -Roles @() -User )) -DomainGroups @((Initialize-iam.DomainGroup.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -Partition1 123 -Partition2 123 -Partition3 123 -PartitionKey "PartitionKey_example" -Usage 123 -Account )) -EndPointRoles @() -Idpreferences @() -Idps @() -Permissions @() -PrivilegeSets @() -Privileges @() -ResourceLimits (Initialize-iam.ResourceLimits.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -PerAccountUserLimit 123 -Account ) -Roles @() -SecurityHolder (Initialize-iam.SecurityHolder.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Account  -ResourcePermissions @((Initialize-iam.ResourcePermission.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -PermissionRoles @((Initialize-iam.PermissionToRoles-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Permission (Initialize-cmrf.CmRf-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example") -Roles @((Initialize-cmrf.CmRf-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example")))) -TargetApp "TargetApp_example" -Holder (Initialize-iam.SecurityHolder.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Account  -ResourcePermissions @((Initialize-iam.ResourcePermission.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -PermissionRoles @((Initialize-iam.PermissionToRoles-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Permission  -Roles @())) -TargetApp "TargetApp_example" -Holder  -Resource ))) -Resource ))) -SessionLimits )) -AppRegistrations @() -DomainGroups @((Initialize-iam.DomainGroup.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -Partition1 123 -Partition2 123 -Partition3 123 -PartitionKey "PartitionKey_example" -Usage 123 -Account )) -EndPointRoles @() -Idpreferences @() -Idps @() -Permissions @() -PrivilegeSets @() -Privileges @() -ResourceLimits (Initialize-iam.ResourceLimits.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -PerAccountUserLimit 123 -Account ) -Roles @() -SecurityHolder  -SessionLimits ) -ResourceGroups @((Initialize-resource.Group.Relationship-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Moid "Moid_example" -Selector "Selector_example" -Link "Link_example" -AccountMoid "AccountMoid_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Name "Name_example" -PerTypeCombinedSelector @((Initialize-resource.PerTypeCombinedSelector-ClassId "ClassId_example" -ObjectType "ObjectType_example" -CombinedSelector "CombinedSelector_example" -EmptyFilter $false -SelectorObjectType "SelectorObjectType_example")) -Qualifier "Qualifier_example" -Selectors @((Initialize-resource.Selector-ClassId "ClassId_example" -ObjectType "ObjectType_example" -Selector "Selector_example")) -Account  -Organizations @()))) -Profiles @()) # KvmPolicy | The 'kvm.Policy' resource to create.
$IfMatch = "IfMatch_example" # String | For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request. (optional)
$IfNoneMatch = "IfNoneMatch_example" # String | For methods that apply server-side changes, If-None-Match used with the * value can be used to create a resource not known to exist, guaranteeing that another resource creation didn't happen before, losing the data of the previous put. The request will be processed only if the eventually existing resource's ETag doesn't match any of the values listed. Otherwise, the status code 412 (Precondition Failed) is used. The asterisk is a special value representing any resource. It is only useful when creating a resource, usually with PUT, to check if another resource with the identity has already been created before. The comparison with the stored ETag uses the weak comparison algorithm, meaning two resources are considered identical if the content is equivalent - they don't have to be identical byte for byte. (optional)

# Create a 'kvm.Policy' resource.
try {
    KvmPolicy $Result = New-IntersightKvmPolicy -KvmPolicy $KvmPolicy -IfMatch $IfMatch -IfNoneMatch $IfNoneMatch
} catch {
    Write-Host ("Exception occured when calling New-IntersightKvmPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KvmPolicy** | [**KvmPolicy**](KvmPolicy.md)| The &#39;kvm.Policy&#39; resource to create. | 
 **IfMatch** | **String**| For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request. | [optional] 
 **IfNoneMatch** | **String**| For methods that apply server-side changes, If-None-Match used with the * value can be used to create a resource not known to exist, guaranteeing that another resource creation didn&#39;t happen before, losing the data of the previous put. The request will be processed only if the eventually existing resource&#39;s ETag doesn&#39;t match any of the values listed. Otherwise, the status code 412 (Precondition Failed) is used. The asterisk is a special value representing any resource. It is only useful when creating a resource, usually with PUT, to check if another resource with the identity has already been created before. The comparison with the stored ETag uses the weak comparison algorithm, meaning two resources are considered identical if the content is equivalent - they don&#39;t have to be identical byte for byte. | [optional] 

### Return type

[**KvmPolicy**](KvmPolicy.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [http_signature](../README.md#http_signature), [oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-IntersightKvmPolicy"></a>
# **Remove-IntersightKvmPolicy**
> void Remove-IntersightKvmPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Moid] <String><br>

Delete a 'kvm.Policy' resource.

### Example
```powershell
Import-Module -Name Intersight

$Configuration = Get-IntersightConfiguration
# Configure API key authorization: cookieAuth
$Configuration["ApiKey"]["X-Starship-Token"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Starship-Token"] = "Bearer"
# Configure HTTP basic authorization: http_signature
$Configuration["Username"] = "YOUR_USERNAME";
$Configuration["Password"] = "YOUR_PASSWORD";
# Configure OAuth2 access token for authorization: oAuth2
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$Moid = "Moid_example" # String | The unique Moid identifier of a resource instance.

# Delete a 'kvm.Policy' resource.
try {
    Remove-IntersightKvmPolicy -Moid $Moid
} catch {
    Write-Host ("Exception occured when calling Remove-IntersightKvmPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Moid** | **String**| The unique Moid identifier of a resource instance. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [http_signature](../README.md#http_signature), [oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-IntersightKvmKvmSessionByMoid"></a>
# **Get-IntersightKvmKvmSessionByMoid**
> KvmKvmSession Get-IntersightKvmKvmSessionByMoid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Moid] <String><br>

Read a 'kvm.KvmSession' resource.

### Example
```powershell
Import-Module -Name Intersight

$Configuration = Get-IntersightConfiguration
# Configure API key authorization: cookieAuth
$Configuration["ApiKey"]["X-Starship-Token"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Starship-Token"] = "Bearer"
# Configure HTTP basic authorization: http_signature
$Configuration["Username"] = "YOUR_USERNAME";
$Configuration["Password"] = "YOUR_PASSWORD";
# Configure OAuth2 access token for authorization: oAuth2
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$Moid = "Moid_example" # String | The unique Moid identifier of a resource instance.

# Read a 'kvm.KvmSession' resource.
try {
    KvmKvmSession $Result = Get-IntersightKvmKvmSessionByMoid -Moid $Moid
} catch {
    Write-Host ("Exception occured when calling Get-IntersightKvmKvmSessionByMoid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Moid** | **String**| The unique Moid identifier of a resource instance. | 

### Return type

[**KvmKvmSession**](KvmKvmSession.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [http_signature](../README.md#http_signature), [oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-IntersightKvmKvmSessionList"></a>
# **Get-IntersightKvmKvmSessionList**
> KvmKvmSessionResponse Get-IntersightKvmKvmSessionList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VarFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Top] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Select] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Apply] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Inlinecount] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-At] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tags] <String><br>

Read a 'kvm.KvmSession' resource.

### Example
```powershell
Import-Module -Name Intersight

$Configuration = Get-IntersightConfiguration
# Configure API key authorization: cookieAuth
$Configuration["ApiKey"]["X-Starship-Token"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Starship-Token"] = "Bearer"
# Configure HTTP basic authorization: http_signature
$Configuration["Username"] = "YOUR_USERNAME";
$Configuration["Password"] = "YOUR_PASSWORD";
# Configure OAuth2 access token for authorization: oAuth2
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$VarFilter = "VarFilter_example" # String | Filter criteria for the resources to return. A URI with a $filter query option identifies a subset of the entries from the Collection of Entries. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the $filter option. The expression language that is used in $filter queries supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false). (optional) (default to "")
$Orderby = "Orderby_example" # String | Determines what properties are used to sort the collection of resources. (optional)
$Top = 987 # Int32 | Specifies the maximum number of resources to return in the response. (optional) (default to 100)
$Skip = 987 # Int32 | Specifies the number of resources to skip in the response. (optional) (default to 0)
$Select = "Select_example" # String | Specifies a subset of properties to return. (optional) (default to "")
$Expand = "Expand_example" # String | Specify additional attributes or related resources to return in addition to the primary resources. (optional)
$Apply = "Apply_example" # String | Specify one or more transformation operations to perform aggregation on the resources. The transformations are processed in order with the output from a transformation being used as input for the subsequent transformation. The ""$apply"" query takes a sequence of set transformations, separated by forward slashes to express that they are consecutively applied, i.e. the result of each transformation is the input to the next transformation. Supported aggregation methods are ""aggregate"" and ""groupby"". The **aggregate** transformation takes a comma-separated list of one or more aggregate expressions as parameters and returns a result set with a single instance, representing the aggregated value for all instances in the input set. The **groupby** transformation takes one or two parameters and 1. Splits the initial set into subsets where all instances in a subset have the same values for the grouping properties specified in the first parameter, 2. Applies set transformations to each subset according to the second parameter, resulting in a new set of potentially different structure and cardinality, 3. Ensures that the instances in the result set contain all grouping properties with the correct values for the group, 4. Concatenates the intermediate result sets into one result set. A groupby transformation affects the structure of the result set. (optional)
$Count = false # Boolean | The $count query specifies the service should return the count of the matching resources, instead of returning the resources. (optional)
$Inlinecount = "Inlinecount_example" # String | The $inlinecount query option allows clients to request an inline count of the matching resources included with the resources in the response. (optional) (default to "allpages")
$At = "At_example" # String | Similar to ""$filter"", but ""at"" is specifically used to filter versioning information properties for resources to return. A URI with an ""at"" Query Option identifies a subset of the Entries from the Collection of Entries identified by the Resource Path section of the URI. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the query option. The expression language that is used in at operators supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false) or any of the additional literal representations shown in the Abstract Type System section. (optional)
$Tags = "Tags_example" # String | The 'tags' parameter is used to request a summary of the Tag utilization for this resource. When the 'tags' parameter is specified, the response provides a list of tag keys, the number of times the key has been used across all documents, and the tag values that have been assigned to the tag key. (optional)

# Read a 'kvm.KvmSession' resource.
try {
    KvmKvmSessionResponse $Result = Get-IntersightKvmKvmSessionList -VarFilter $VarFilter -Orderby $Orderby -Top $Top -Skip $Skip -Select $Select -Expand $Expand -Apply $Apply -Count $Count -Inlinecount $Inlinecount -At $At -Tags $Tags
} catch {
    Write-Host ("Exception occured when calling Get-IntersightKvmKvmSessionList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VarFilter** | **String**| Filter criteria for the resources to return. A URI with a $filter query option identifies a subset of the entries from the Collection of Entries. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the $filter option. The expression language that is used in $filter queries supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false). | [optional] [default to &quot;&quot;]
 **Orderby** | **String**| Determines what properties are used to sort the collection of resources. | [optional] 
 **Top** | **Int32**| Specifies the maximum number of resources to return in the response. | [optional] [default to 100]
 **Skip** | **Int32**| Specifies the number of resources to skip in the response. | [optional] [default to 0]
 **Select** | **String**| Specifies a subset of properties to return. | [optional] [default to &quot;&quot;]
 **Expand** | **String**| Specify additional attributes or related resources to return in addition to the primary resources. | [optional] 
 **Apply** | **String**| Specify one or more transformation operations to perform aggregation on the resources. The transformations are processed in order with the output from a transformation being used as input for the subsequent transformation. The &quot;&quot;$apply&quot;&quot; query takes a sequence of set transformations, separated by forward slashes to express that they are consecutively applied, i.e. the result of each transformation is the input to the next transformation. Supported aggregation methods are &quot;&quot;aggregate&quot;&quot; and &quot;&quot;groupby&quot;&quot;. The **aggregate** transformation takes a comma-separated list of one or more aggregate expressions as parameters and returns a result set with a single instance, representing the aggregated value for all instances in the input set. The **groupby** transformation takes one or two parameters and 1. Splits the initial set into subsets where all instances in a subset have the same values for the grouping properties specified in the first parameter, 2. Applies set transformations to each subset according to the second parameter, resulting in a new set of potentially different structure and cardinality, 3. Ensures that the instances in the result set contain all grouping properties with the correct values for the group, 4. Concatenates the intermediate result sets into one result set. A groupby transformation affects the structure of the result set. | [optional] 
 **Count** | **Boolean**| The $count query specifies the service should return the count of the matching resources, instead of returning the resources. | [optional] 
 **Inlinecount** | **String**| The $inlinecount query option allows clients to request an inline count of the matching resources included with the resources in the response. | [optional] [default to &quot;allpages&quot;]
 **At** | **String**| Similar to &quot;&quot;$filter&quot;&quot;, but &quot;&quot;at&quot;&quot; is specifically used to filter versioning information properties for resources to return. A URI with an &quot;&quot;at&quot;&quot; Query Option identifies a subset of the Entries from the Collection of Entries identified by the Resource Path section of the URI. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the query option. The expression language that is used in at operators supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false) or any of the additional literal representations shown in the Abstract Type System section. | [optional] 
 **Tags** | **String**| The &#39;tags&#39; parameter is used to request a summary of the Tag utilization for this resource. When the &#39;tags&#39; parameter is specified, the response provides a list of tag keys, the number of times the key has been used across all documents, and the tag values that have been assigned to the tag key. | [optional] 

### Return type

[**KvmKvmSessionResponse**](KvmKvmSessionResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [http_signature](../README.md#http_signature), [oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-IntersightKvmPolicyByMoid"></a>
# **Get-IntersightKvmPolicyByMoid**
> KvmPolicy Get-IntersightKvmPolicyByMoid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Moid] <String><br>

Read a 'kvm.Policy' resource.

### Example
```powershell
Import-Module -Name Intersight

$Configuration = Get-IntersightConfiguration
# Configure API key authorization: cookieAuth
$Configuration["ApiKey"]["X-Starship-Token"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Starship-Token"] = "Bearer"
# Configure HTTP basic authorization: http_signature
$Configuration["Username"] = "YOUR_USERNAME";
$Configuration["Password"] = "YOUR_PASSWORD";
# Configure OAuth2 access token for authorization: oAuth2
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$Moid = "Moid_example" # String | The unique Moid identifier of a resource instance.

# Read a 'kvm.Policy' resource.
try {
    KvmPolicy $Result = Get-IntersightKvmPolicyByMoid -Moid $Moid
} catch {
    Write-Host ("Exception occured when calling Get-IntersightKvmPolicyByMoid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Moid** | **String**| The unique Moid identifier of a resource instance. | 

### Return type

[**KvmPolicy**](KvmPolicy.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [http_signature](../README.md#http_signature), [oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-IntersightKvmPolicyList"></a>
# **Get-IntersightKvmPolicyList**
> KvmPolicyResponse Get-IntersightKvmPolicyList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VarFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Top] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Select] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Apply] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Inlinecount] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-At] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tags] <String><br>

Read a 'kvm.Policy' resource.

### Example
```powershell
Import-Module -Name Intersight

$Configuration = Get-IntersightConfiguration
# Configure API key authorization: cookieAuth
$Configuration["ApiKey"]["X-Starship-Token"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Starship-Token"] = "Bearer"
# Configure HTTP basic authorization: http_signature
$Configuration["Username"] = "YOUR_USERNAME";
$Configuration["Password"] = "YOUR_PASSWORD";
# Configure OAuth2 access token for authorization: oAuth2
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$VarFilter = "VarFilter_example" # String | Filter criteria for the resources to return. A URI with a $filter query option identifies a subset of the entries from the Collection of Entries. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the $filter option. The expression language that is used in $filter queries supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false). (optional) (default to "")
$Orderby = "Orderby_example" # String | Determines what properties are used to sort the collection of resources. (optional)
$Top = 987 # Int32 | Specifies the maximum number of resources to return in the response. (optional) (default to 100)
$Skip = 987 # Int32 | Specifies the number of resources to skip in the response. (optional) (default to 0)
$Select = "Select_example" # String | Specifies a subset of properties to return. (optional) (default to "")
$Expand = "Expand_example" # String | Specify additional attributes or related resources to return in addition to the primary resources. (optional)
$Apply = "Apply_example" # String | Specify one or more transformation operations to perform aggregation on the resources. The transformations are processed in order with the output from a transformation being used as input for the subsequent transformation. The ""$apply"" query takes a sequence of set transformations, separated by forward slashes to express that they are consecutively applied, i.e. the result of each transformation is the input to the next transformation. Supported aggregation methods are ""aggregate"" and ""groupby"". The **aggregate** transformation takes a comma-separated list of one or more aggregate expressions as parameters and returns a result set with a single instance, representing the aggregated value for all instances in the input set. The **groupby** transformation takes one or two parameters and 1. Splits the initial set into subsets where all instances in a subset have the same values for the grouping properties specified in the first parameter, 2. Applies set transformations to each subset according to the second parameter, resulting in a new set of potentially different structure and cardinality, 3. Ensures that the instances in the result set contain all grouping properties with the correct values for the group, 4. Concatenates the intermediate result sets into one result set. A groupby transformation affects the structure of the result set. (optional)
$Count = false # Boolean | The $count query specifies the service should return the count of the matching resources, instead of returning the resources. (optional)
$Inlinecount = "Inlinecount_example" # String | The $inlinecount query option allows clients to request an inline count of the matching resources included with the resources in the response. (optional) (default to "allpages")
$At = "At_example" # String | Similar to ""$filter"", but ""at"" is specifically used to filter versioning information properties for resources to return. A URI with an ""at"" Query Option identifies a subset of the Entries from the Collection of Entries identified by the Resource Path section of the URI. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the query option. The expression language that is used in at operators supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false) or any of the additional literal representations shown in the Abstract Type System section. (optional)
$Tags = "Tags_example" # String | The 'tags' parameter is used to request a summary of the Tag utilization for this resource. When the 'tags' parameter is specified, the response provides a list of tag keys, the number of times the key has been used across all documents, and the tag values that have been assigned to the tag key. (optional)

# Read a 'kvm.Policy' resource.
try {
    KvmPolicyResponse $Result = Get-IntersightKvmPolicyList -VarFilter $VarFilter -Orderby $Orderby -Top $Top -Skip $Skip -Select $Select -Expand $Expand -Apply $Apply -Count $Count -Inlinecount $Inlinecount -At $At -Tags $Tags
} catch {
    Write-Host ("Exception occured when calling Get-IntersightKvmPolicyList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VarFilter** | **String**| Filter criteria for the resources to return. A URI with a $filter query option identifies a subset of the entries from the Collection of Entries. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the $filter option. The expression language that is used in $filter queries supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false). | [optional] [default to &quot;&quot;]
 **Orderby** | **String**| Determines what properties are used to sort the collection of resources. | [optional] 
 **Top** | **Int32**| Specifies the maximum number of resources to return in the response. | [optional] [default to 100]
 **Skip** | **Int32**| Specifies the number of resources to skip in the response. | [optional] [default to 0]
 **Select** | **String**| Specifies a subset of properties to return. | [optional] [default to &quot;&quot;]
 **Expand** | **String**| Specify additional attributes or related resources to return in addition to the primary resources. | [optional] 
 **Apply** | **String**| Specify one or more transformation operations to perform aggregation on the resources. The transformations are processed in order with the output from a transformation being used as input for the subsequent transformation. The &quot;&quot;$apply&quot;&quot; query takes a sequence of set transformations, separated by forward slashes to express that they are consecutively applied, i.e. the result of each transformation is the input to the next transformation. Supported aggregation methods are &quot;&quot;aggregate&quot;&quot; and &quot;&quot;groupby&quot;&quot;. The **aggregate** transformation takes a comma-separated list of one or more aggregate expressions as parameters and returns a result set with a single instance, representing the aggregated value for all instances in the input set. The **groupby** transformation takes one or two parameters and 1. Splits the initial set into subsets where all instances in a subset have the same values for the grouping properties specified in the first parameter, 2. Applies set transformations to each subset according to the second parameter, resulting in a new set of potentially different structure and cardinality, 3. Ensures that the instances in the result set contain all grouping properties with the correct values for the group, 4. Concatenates the intermediate result sets into one result set. A groupby transformation affects the structure of the result set. | [optional] 
 **Count** | **Boolean**| The $count query specifies the service should return the count of the matching resources, instead of returning the resources. | [optional] 
 **Inlinecount** | **String**| The $inlinecount query option allows clients to request an inline count of the matching resources included with the resources in the response. | [optional] [default to &quot;allpages&quot;]
 **At** | **String**| Similar to &quot;&quot;$filter&quot;&quot;, but &quot;&quot;at&quot;&quot; is specifically used to filter versioning information properties for resources to return. A URI with an &quot;&quot;at&quot;&quot; Query Option identifies a subset of the Entries from the Collection of Entries identified by the Resource Path section of the URI. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the query option. The expression language that is used in at operators supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false) or any of the additional literal representations shown in the Abstract Type System section. | [optional] 
 **Tags** | **String**| The &#39;tags&#39; parameter is used to request a summary of the Tag utilization for this resource. When the &#39;tags&#39; parameter is specified, the response provides a list of tag keys, the number of times the key has been used across all documents, and the tag values that have been assigned to the tag key. | [optional] 

### Return type

[**KvmPolicyResponse**](KvmPolicyResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [http_signature](../README.md#http_signature), [oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-IntersightKvmPolicy"></a>
# **Set-IntersightKvmPolicy**
> KvmPolicy Set-IntersightKvmPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Moid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KvmPolicy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IfMatch] <String><br>

Update a 'kvm.Policy' resource.

### Example
```powershell
Import-Module -Name Intersight

$Configuration = Get-IntersightConfiguration
# Configure API key authorization: cookieAuth
$Configuration["ApiKey"]["X-Starship-Token"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Starship-Token"] = "Bearer"
# Configure HTTP basic authorization: http_signature
$Configuration["Username"] = "YOUR_USERNAME";
$Configuration["Password"] = "YOUR_PASSWORD";
# Configure OAuth2 access token for authorization: oAuth2
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$Moid = "Moid_example" # String | The unique Moid identifier of a resource instance.
$KvmPolicy = (Initialize-kvm.Policy-AccountMoid "AccountMoid_example" -ClassId "ClassId_example" -CreateTime Get-Date -DomainGroupMoid "DomainGroupMoid_example" -ModTime Get-Date -Moid "Moid_example" -ObjectType "ObjectType_example" -Owners @("Owners_example") -SharedScope "SharedScope_example" -Tags @() -VersionContext  -Ancestors @() -Parent  -PermissionResources @() -DisplayNames "TODO" -Description "Description_example" -Name "Name_example" -EnableLocalServerVideo $false -EnableVideoEncryption $false -Enabled $false -MaximumSessions 123 -RemotePort 123 -Organization  -Profiles @()) # KvmPolicy | The 'kvm.Policy' resource to update.
$IfMatch = "IfMatch_example" # String | For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request. (optional)

# Update a 'kvm.Policy' resource.
try {
    KvmPolicy $Result = Set-IntersightKvmPolicy -Moid $Moid -KvmPolicy $KvmPolicy -IfMatch $IfMatch
} catch {
    Write-Host ("Exception occured when calling Set-IntersightKvmPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Moid** | **String**| The unique Moid identifier of a resource instance. | 
 **KvmPolicy** | [**KvmPolicy**](KvmPolicy.md)| The &#39;kvm.Policy&#39; resource to update. | 
 **IfMatch** | **String**| For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request. | [optional] 

### Return type

[**KvmPolicy**](KvmPolicy.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [http_signature](../README.md#http_signature), [oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json, application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-IntersightKvmPolicy"></a>
# **Update-IntersightKvmPolicy**
> KvmPolicy Update-IntersightKvmPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Moid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KvmPolicy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IfMatch] <String><br>

Update a 'kvm.Policy' resource.

### Example
```powershell
Import-Module -Name Intersight

$Configuration = Get-IntersightConfiguration
# Configure API key authorization: cookieAuth
$Configuration["ApiKey"]["X-Starship-Token"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Starship-Token"] = "Bearer"
# Configure HTTP basic authorization: http_signature
$Configuration["Username"] = "YOUR_USERNAME";
$Configuration["Password"] = "YOUR_PASSWORD";
# Configure OAuth2 access token for authorization: oAuth2
$Configuration["AccessToken"] = "YOUR_ACCESS_TOKEN";

$Moid = "Moid_example" # String | The unique Moid identifier of a resource instance.
$KvmPolicy =  # KvmPolicy | The 'kvm.Policy' resource to update.
$IfMatch = "IfMatch_example" # String | For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request. (optional)

# Update a 'kvm.Policy' resource.
try {
    KvmPolicy $Result = Update-IntersightKvmPolicy -Moid $Moid -KvmPolicy $KvmPolicy -IfMatch $IfMatch
} catch {
    Write-Host ("Exception occured when calling Update-IntersightKvmPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Moid** | **String**| The unique Moid identifier of a resource instance. | 
 **KvmPolicy** | [**KvmPolicy**](KvmPolicy.md)| The &#39;kvm.Policy&#39; resource to update. | 
 **IfMatch** | **String**| For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request. | [optional] 

### Return type

[**KvmPolicy**](KvmPolicy.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [http_signature](../README.md#http_signature), [oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json, application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

