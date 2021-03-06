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

DNS settings used to access LDAP Providers.

.PARAMETER ObjectType
The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types.
.PARAMETER SearchDomain
Domain name that acts as a source for a DNS query.
.PARAMETER SearchForest
Forest name that acts as a source for a DNS query.
.PARAMETER Source
Source of the domain name used for the DNS SRV request.
.OUTPUTS

IamLdapDnsParameters<PSCustomObject>
#>

function Initialize-IntersightIamLdapDnsParameters {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^(([a-zA-Z0-9])|([a-zA-Z0-9][a-zA-Z0-9\\.\\-]*[a-zA-Z0-9]))$")]
        [String]
        ${SearchDomain},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^(([a-zA-Z0-9])|([a-zA-Z0-9][a-zA-Z0-9\\.\\-]*[a-zA-Z0-9]))$")]
        [String]
        ${SearchForest},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Extracted", "Configured", "ConfiguredExtracted")]
        [String]
        ${Source} = "Extracted"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightIamLdapDnsParameters' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$SearchDomain -and $SearchDomain.length -gt 64) {
            throw "invalid value for 'SearchDomain', the character length must be smaller than or equal to 64."
        }

        if (!$SearchForest -and $SearchForest.length -gt 64) {
            throw "invalid value for 'SearchForest', the character length must be smaller than or equal to 64."
        }

        
        $PSO = [PSCustomObject]@{
            "ObjectType" = ${ObjectType}
            "SearchDomain" = ${SearchDomain}
            "SearchForest" = ${SearchForest}
            "Source" = ${Source}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IamLdapDnsParameters<PSCustomObject>

.DESCRIPTION

Convert from JSON to IamLdapDnsParameters<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IamLdapDnsParameters<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToIamLdapDnsParameters {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightIamLdapDnsParameters' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightIamLdapDnsParameters
        $AllProperties = ("ClassId", "ObjectType", "SearchDomain", "SearchForest", "Source")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SearchDomain"))) { #optional property not found
            $SearchDomain = $null
        } else {
            $SearchDomain = $JsonParameters.PSobject.Properties["SearchDomain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SearchForest"))) { #optional property not found
            $SearchForest = $null
        } else {
            $SearchForest = $JsonParameters.PSobject.Properties["SearchForest"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["Source"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "SearchDomain" = ${SearchDomain}
            "SearchForest" = ${SearchForest}
            "Source" = ${Source}
        }

        return $PSO
    }

}

