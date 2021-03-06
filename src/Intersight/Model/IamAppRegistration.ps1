#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-07-16T08:45:19Z.
# Version: 1.0.9-2020
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

AppRegistration encapsulates the meta-data values of a registered OAuth2 client application, as described in https://tools.ietf.org/html/rfc7591#section-2. Registered client applications have a set of metadata values associated with their client identifier at the Intersight authorization server, including the list of valid redirection URIs or a display name. The meta-data is used to specify how a client application can retrieve a OAuth2 Access Token and subsequently invoke Intersight API on behalf of this AppRegistration. To register an OAuth2 application, the following information must be provided. 1) Application name 2) An icon for the application 3) URL to the application's home page 4) A short description of the application 5) A list of redirect URLs When an AppRegistration is created, a unique OAuth2 clientId is generated and returned in the HTTP response.

.PARAMETER Moid
The unique identifier of this Managed Object instance.
.PARAMETER Owners
No description available.
.PARAMETER Tags
No description available.
.PARAMETER VersionContext
No description available.
.PARAMETER Parent
No description available.
.PARAMETER ClientName
App Registration name specified by user.
.PARAMETER ClientSecret
The OAuth2 client secret. The value of this property is generated when grantType includes 'client-credentials'. Otherwise, no client-secret is generated.
.PARAMETER ClientType
The type of the OAuth2 client (public or confidential), as specified in https://tools.ietf.org/html/rfc6749#section-2.1.
.PARAMETER Description
Description of the application.
.PARAMETER GrantTypes
No description available.
.PARAMETER RedirectUris
No description available.
.PARAMETER RenewClientSecret
Set value to true to renew the client-secret. Applicable to client_credentials grant type.
.PARAMETER ResponseTypes
No description available.
.PARAMETER Revoke
Used to trigger update the revocationTimestamp value. If UI sent updating request with the Revoke value is true, then update RevocationTimestamp.
.PARAMETER Account
No description available.
.PARAMETER Permission
No description available.
.PARAMETER Roles
An array of relationships to iamRole resources.
.PARAMETER User
No description available.
.OUTPUTS

IamAppRegistration<PSCustomObject>
#>

function Initialize-IntersightIamAppRegistration {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Owners},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VersionContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClientName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClientSecret},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("public", "confidential")]
        [String]
        ${ClientType} = "public",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("authorization_code", "refresh_token", "client_credentials", "implicit", "password", "urn:ietf:params:oauth:grant-type:jwt-bearer", "urn:ietf:params:oauth:grant-type:saml2-bearer")]
        [String[]]
        ${GrantTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RedirectUris},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RenewClientSecret},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("code", "token")]
        [String[]]
        ${ResponseTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Revoke},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Permission},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Roles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${User}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightIamAppRegistration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "ClientName" = ${ClientName}
            "ClientSecret" = ${ClientSecret}
            "ClientType" = ${ClientType}
            "Description" = ${Description}
            "GrantTypes" = ${GrantTypes}
            "RedirectUris" = ${RedirectUris}
            "RenewClientSecret" = ${RenewClientSecret}
            "ResponseTypes" = ${ResponseTypes}
            "Revoke" = ${Revoke}
            "Account" = ${Account}
            "Permission" = ${Permission}
            "Roles" = ${Roles}
            "User" = ${User}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IamAppRegistration<PSCustomObject>

.DESCRIPTION

Convert from JSON to IamAppRegistration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IamAppRegistration<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToIamAppRegistration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightIamAppRegistration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightIamAppRegistration
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "ClientId", "ClientName", "ClientSecret", "ClientType", "Description", "GrantTypes", "RedirectUris", "RenewClientSecret", "ResponseTypes", "RevocationTimestamp", "Revoke", "Account", "OauthTokens", "Permission", "Roles", "User")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `ClassId` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property `ClassId` missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property `ObjectType` missing."
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["ObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccountMoid"))) { #optional property not found
            $AccountMoid = $null
        } else {
            $AccountMoid = $JsonParameters.PSobject.Properties["AccountMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreateTime"))) { #optional property not found
            $CreateTime = $null
        } else {
            $CreateTime = $JsonParameters.PSobject.Properties["CreateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroupMoid"))) { #optional property not found
            $DomainGroupMoid = $null
        } else {
            $DomainGroupMoid = $JsonParameters.PSobject.Properties["DomainGroupMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ModTime"))) { #optional property not found
            $ModTime = $null
        } else {
            $ModTime = $JsonParameters.PSobject.Properties["ModTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Moid"))) { #optional property not found
            $Moid = $null
        } else {
            $Moid = $JsonParameters.PSobject.Properties["Moid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Owners"))) { #optional property not found
            $Owners = $null
        } else {
            $Owners = $JsonParameters.PSobject.Properties["Owners"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SharedScope"))) { #optional property not found
            $SharedScope = $null
        } else {
            $SharedScope = $JsonParameters.PSobject.Properties["SharedScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["Tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionContext"))) { #optional property not found
            $VersionContext = $null
        } else {
            $VersionContext = $JsonParameters.PSobject.Properties["VersionContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ancestors"))) { #optional property not found
            $Ancestors = $null
        } else {
            $Ancestors = $JsonParameters.PSobject.Properties["Ancestors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parent"))) { #optional property not found
            $Parent = $null
        } else {
            $Parent = $JsonParameters.PSobject.Properties["Parent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PermissionResources"))) { #optional property not found
            $PermissionResources = $null
        } else {
            $PermissionResources = $JsonParameters.PSobject.Properties["PermissionResources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayNames"))) { #optional property not found
            $DisplayNames = $null
        } else {
            $DisplayNames = $JsonParameters.PSobject.Properties["DisplayNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClientId"))) { #optional property not found
            $ClientId = $null
        } else {
            $ClientId = $JsonParameters.PSobject.Properties["ClientId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClientName"))) { #optional property not found
            $ClientName = $null
        } else {
            $ClientName = $JsonParameters.PSobject.Properties["ClientName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClientSecret"))) { #optional property not found
            $ClientSecret = $null
        } else {
            $ClientSecret = $JsonParameters.PSobject.Properties["ClientSecret"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClientType"))) { #optional property not found
            $ClientType = $null
        } else {
            $ClientType = $JsonParameters.PSobject.Properties["ClientType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "GrantTypes"))) { #optional property not found
            $GrantTypes = $null
        } else {
            $GrantTypes = $JsonParameters.PSobject.Properties["GrantTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RedirectUris"))) { #optional property not found
            $RedirectUris = $null
        } else {
            $RedirectUris = $JsonParameters.PSobject.Properties["RedirectUris"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RenewClientSecret"))) { #optional property not found
            $RenewClientSecret = $null
        } else {
            $RenewClientSecret = $JsonParameters.PSobject.Properties["RenewClientSecret"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ResponseTypes"))) { #optional property not found
            $ResponseTypes = $null
        } else {
            $ResponseTypes = $JsonParameters.PSobject.Properties["ResponseTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RevocationTimestamp"))) { #optional property not found
            $RevocationTimestamp = $null
        } else {
            $RevocationTimestamp = $JsonParameters.PSobject.Properties["RevocationTimestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Revoke"))) { #optional property not found
            $Revoke = $null
        } else {
            $Revoke = $JsonParameters.PSobject.Properties["Revoke"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OauthTokens"))) { #optional property not found
            $OauthTokens = $null
        } else {
            $OauthTokens = $JsonParameters.PSobject.Properties["OauthTokens"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Permission"))) { #optional property not found
            $Permission = $null
        } else {
            $Permission = $JsonParameters.PSobject.Properties["Permission"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Roles"))) { #optional property not found
            $Roles = $null
        } else {
            $Roles = $JsonParameters.PSobject.Properties["Roles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "User"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["User"].value
        }

        $PSO = [PSCustomObject]@{
            "AccountMoid" = ${AccountMoid}
            "ClassId" = ${ClassId}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "ObjectType" = ${ObjectType}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "ClientId" = ${ClientId}
            "ClientName" = ${ClientName}
            "ClientSecret" = ${ClientSecret}
            "ClientType" = ${ClientType}
            "Description" = ${Description}
            "GrantTypes" = ${GrantTypes}
            "RedirectUris" = ${RedirectUris}
            "RenewClientSecret" = ${RenewClientSecret}
            "ResponseTypes" = ${ResponseTypes}
            "RevocationTimestamp" = ${RevocationTimestamp}
            "Revoke" = ${Revoke}
            "Account" = ${Account}
            "OauthTokens" = ${OauthTokens}
            "Permission" = ${Permission}
            "Roles" = ${Roles}
            "User" = ${User}
        }

        return $PSO
    }

}

