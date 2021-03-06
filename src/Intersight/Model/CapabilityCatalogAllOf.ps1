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

Definition of the list of properties defined in 'capability.Catalog', excluding properties defined in parent classes.

.PARAMETER Name
A unique name for the catalog.
.PARAMETER Organization
No description available.
.PARAMETER Sections
An array of relationships to capabilitySection resources.
.OUTPUTS

CapabilityCatalogAllOf<PSCustomObject>
#>

function Initialize-IntersightCapabilityCatalogAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Sections}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightCapabilityCatalogAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Name" = ${Name}
            "Organization" = ${Organization}
            "Sections" = ${Sections}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CapabilityCatalogAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to CapabilityCatalogAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CapabilityCatalogAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToCapabilityCatalogAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightCapabilityCatalogAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightCapabilityCatalogAllOf
        $AllProperties = ("Name", "Organization", "Sections")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Sections"))) { #optional property not found
            $Sections = $null
        } else {
            $Sections = $JsonParameters.PSobject.Properties["Sections"].value
        }

        $PSO = [PSCustomObject]@{
            "Name" = ${Name}
            "Organization" = ${Organization}
            "Sections" = ${Sections}
        }

        return $PSO
    }

}

