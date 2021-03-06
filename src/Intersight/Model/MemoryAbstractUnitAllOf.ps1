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

Definition of the list of properties defined in 'memory.AbstractUnit', excluding properties defined in parent classes.

.OUTPUTS

MemoryAbstractUnitAllOf<PSCustomObject>
#>

function Initialize-IntersightMemoryAbstractUnitAllOf {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightMemoryAbstractUnitAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MemoryAbstractUnitAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to MemoryAbstractUnitAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MemoryAbstractUnitAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToMemoryAbstractUnitAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightMemoryAbstractUnitAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightMemoryAbstractUnitAllOf
        $AllProperties = ("AdminState", "ArrayId", "Bank", "Capacity", "Clock", "FormFactor", "Latency", "Location", "OperPowerState", "OperState", "Operability", "Presence", "Set", "Speed", "Thermal", "Type", "Visibility", "Width")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminState"))) { #optional property not found
            $AdminState = $null
        } else {
            $AdminState = $JsonParameters.PSobject.Properties["AdminState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ArrayId"))) { #optional property not found
            $ArrayId = $null
        } else {
            $ArrayId = $JsonParameters.PSobject.Properties["ArrayId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Bank"))) { #optional property not found
            $Bank = $null
        } else {
            $Bank = $JsonParameters.PSobject.Properties["Bank"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Capacity"))) { #optional property not found
            $Capacity = $null
        } else {
            $Capacity = $JsonParameters.PSobject.Properties["Capacity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Clock"))) { #optional property not found
            $Clock = $null
        } else {
            $Clock = $JsonParameters.PSobject.Properties["Clock"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FormFactor"))) { #optional property not found
            $FormFactor = $null
        } else {
            $FormFactor = $JsonParameters.PSobject.Properties["FormFactor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Latency"))) { #optional property not found
            $Latency = $null
        } else {
            $Latency = $JsonParameters.PSobject.Properties["Latency"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Location"))) { #optional property not found
            $Location = $null
        } else {
            $Location = $JsonParameters.PSobject.Properties["Location"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperPowerState"))) { #optional property not found
            $OperPowerState = $null
        } else {
            $OperPowerState = $JsonParameters.PSobject.Properties["OperPowerState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperState"))) { #optional property not found
            $OperState = $null
        } else {
            $OperState = $JsonParameters.PSobject.Properties["OperState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Operability"))) { #optional property not found
            $Operability = $null
        } else {
            $Operability = $JsonParameters.PSobject.Properties["Operability"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Presence"))) { #optional property not found
            $Presence = $null
        } else {
            $Presence = $JsonParameters.PSobject.Properties["Presence"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Set"))) { #optional property not found
            $Set = $null
        } else {
            $Set = $JsonParameters.PSobject.Properties["Set"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Speed"))) { #optional property not found
            $Speed = $null
        } else {
            $Speed = $JsonParameters.PSobject.Properties["Speed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Thermal"))) { #optional property not found
            $Thermal = $null
        } else {
            $Thermal = $JsonParameters.PSobject.Properties["Thermal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Visibility"))) { #optional property not found
            $Visibility = $null
        } else {
            $Visibility = $JsonParameters.PSobject.Properties["Visibility"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Width"))) { #optional property not found
            $Width = $null
        } else {
            $Width = $JsonParameters.PSobject.Properties["Width"].value
        }

        $PSO = [PSCustomObject]@{
            "AdminState" = ${AdminState}
            "ArrayId" = ${ArrayId}
            "Bank" = ${Bank}
            "Capacity" = ${Capacity}
            "Clock" = ${Clock}
            "FormFactor" = ${FormFactor}
            "Latency" = ${Latency}
            "Location" = ${Location}
            "OperPowerState" = ${OperPowerState}
            "OperState" = ${OperState}
            "Operability" = ${Operability}
            "Presence" = ${Presence}
            "Set" = ${Set}
            "Speed" = ${Speed}
            "Thermal" = ${Thermal}
            "Type" = ${Type}
            "Visibility" = ${Visibility}
            "Width" = ${Width}
        }

        return $PSO
    }

}

