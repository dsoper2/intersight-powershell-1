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

Definition of the list of properties defined in 'iam.LdapPolicy', excluding properties defined in parent classes.

.PARAMETER BaseProperties
No description available.
.PARAMETER DnsParameters
No description available.
.PARAMETER EnableDns
Enables DNS to access LDAP servers.
.PARAMETER Enabled
LDAP server performs authentication.
.PARAMETER UserSearchPrecedence
Search precedence between local user database and LDAP user database.
.PARAMETER Var0Idp
No description available.
.PARAMETER ApplianceAccount
No description available.
.PARAMETER Groups
An array of relationships to iamLdapGroup resources.
.PARAMETER Organization
No description available.
.PARAMETER Profiles
An array of relationships to policyAbstractConfigProfile resources.
.PARAMETER Providers
An array of relationships to iamLdapProvider resources.
.OUTPUTS

IamLdapPolicyAllOf<PSCustomObject>
#>

function Initialize-IntersightIamLdapPolicyAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BaseProperties},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DnsParameters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableDns},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("LocalUserDb", "LDAPUserDb")]
        [String]
        ${UserSearchPrecedence} = "LocalUserDb",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Var0Idp},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ApplianceAccount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Groups},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Profiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Providers}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightIamLdapPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "BaseProperties" = ${BaseProperties}
            "DnsParameters" = ${DnsParameters}
            "EnableDns" = ${EnableDns}
            "Enabled" = ${Enabled}
            "UserSearchPrecedence" = ${UserSearchPrecedence}
            "_0_Idp" = ${Var0Idp}
            "ApplianceAccount" = ${ApplianceAccount}
            "Groups" = ${Groups}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
            "Providers" = ${Providers}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IamLdapPolicyAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to IamLdapPolicyAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IamLdapPolicyAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToIamLdapPolicyAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightIamLdapPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightIamLdapPolicyAllOf
        $AllProperties = ("BaseProperties", "DnsParameters", "EnableDns", "Enabled", "UserSearchPrecedence", "_0_Idp", "ApplianceAccount", "Groups", "Organization", "Profiles", "Providers")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BaseProperties"))) { #optional property not found
            $BaseProperties = $null
        } else {
            $BaseProperties = $JsonParameters.PSobject.Properties["BaseProperties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DnsParameters"))) { #optional property not found
            $DnsParameters = $null
        } else {
            $DnsParameters = $JsonParameters.PSobject.Properties["DnsParameters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EnableDns"))) { #optional property not found
            $EnableDns = $null
        } else {
            $EnableDns = $JsonParameters.PSobject.Properties["EnableDns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["Enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UserSearchPrecedence"))) { #optional property not found
            $UserSearchPrecedence = $null
        } else {
            $UserSearchPrecedence = $JsonParameters.PSobject.Properties["UserSearchPrecedence"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_0_Idp"))) { #optional property not found
            $Var0Idp = $null
        } else {
            $Var0Idp = $JsonParameters.PSobject.Properties["_0_Idp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ApplianceAccount"))) { #optional property not found
            $ApplianceAccount = $null
        } else {
            $ApplianceAccount = $JsonParameters.PSobject.Properties["ApplianceAccount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["Groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Profiles"))) { #optional property not found
            $Profiles = $null
        } else {
            $Profiles = $JsonParameters.PSobject.Properties["Profiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Providers"))) { #optional property not found
            $Providers = $null
        } else {
            $Providers = $JsonParameters.PSobject.Properties["Providers"].value
        }

        $PSO = [PSCustomObject]@{
            "BaseProperties" = ${BaseProperties}
            "DnsParameters" = ${DnsParameters}
            "EnableDns" = ${EnableDns}
            "Enabled" = ${Enabled}
            "UserSearchPrecedence" = ${UserSearchPrecedence}
            "_0_Idp" = ${Var0Idp}
            "ApplianceAccount" = ${ApplianceAccount}
            "Groups" = ${Groups}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
            "Providers" = ${Providers}
        }

        return $PSO
    }

}
