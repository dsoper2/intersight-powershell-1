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

OrderByColumnSpecs indicate how to do order by operations. Each order-by condition can be a jsonString or a map.

.PARAMETER Dimension
Any dimension or metric name.
.PARAMETER Direction
null
.PARAMETER DimensionOrder
null
.OUTPUTS

TelemetryDruidOrderByColumnSpec<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidOrderByColumnSpec {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Dimension},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ascending", "descending")]
        [String]
        ${Direction},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("lexicographic", "alphanumeric", "strlen", "numeric")]
        [String]
        ${DimensionOrder}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidOrderByColumnSpec' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "dimension" = ${Dimension}
            "direction" = ${Direction}
            "dimensionOrder" = ${DimensionOrder}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidOrderByColumnSpec<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidOrderByColumnSpec<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidOrderByColumnSpec<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidOrderByColumnSpec {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidOrderByColumnSpec' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidOrderByColumnSpec
        $AllProperties = ("dimension", "direction", "dimensionOrder")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dimension"))) { #optional property not found
            $Dimension = $null
        } else {
            $Dimension = $JsonParameters.PSobject.Properties["dimension"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "direction"))) { #optional property not found
            $Direction = $null
        } else {
            $Direction = $JsonParameters.PSobject.Properties["direction"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dimensionOrder"))) { #optional property not found
            $DimensionOrder = $null
        } else {
            $DimensionOrder = $JsonParameters.PSobject.Properties["dimensionOrder"].value
        }

        $PSO = [PSCustomObject]@{
            "dimension" = ${Dimension}
            "direction" = ${Direction}
            "dimensionOrder" = ${DimensionOrder}
        }

        return $PSO
    }

}
