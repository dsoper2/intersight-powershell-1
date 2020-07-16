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

Definition of the list of properties defined in 'bios.Unit', excluding properties defined in parent classes.

.PARAMETER ComputeBlade
No description available.
.PARAMETER ComputeRackUnit
No description available.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER SystemBootOrder
No description available.
.OUTPUTS

BiosUnitAllOf<PSCustomObject>
#>

function Initialize-IntersightBiosUnitAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ComputeBlade},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ComputeRackUnit},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SystemBootOrder}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightBiosUnitAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "ComputeBlade" = ${ComputeBlade}
            "ComputeRackUnit" = ${ComputeRackUnit}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "SystemBootOrder" = ${SystemBootOrder}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BiosUnitAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to BiosUnitAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BiosUnitAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToBiosUnitAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightBiosUnitAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightBiosUnitAllOf
        $AllProperties = ("InitSeq", "InitTs", "ComputeBlade", "ComputeRackUnit", "InventoryDeviceInfo", "RegisteredDevice", "RunningFirmware", "SystemBootOrder")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InitSeq"))) { #optional property not found
            $InitSeq = $null
        } else {
            $InitSeq = $JsonParameters.PSobject.Properties["InitSeq"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InitTs"))) { #optional property not found
            $InitTs = $null
        } else {
            $InitTs = $JsonParameters.PSobject.Properties["InitTs"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputeBlade"))) { #optional property not found
            $ComputeBlade = $null
        } else {
            $ComputeBlade = $JsonParameters.PSobject.Properties["ComputeBlade"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputeRackUnit"))) { #optional property not found
            $ComputeRackUnit = $null
        } else {
            $ComputeRackUnit = $JsonParameters.PSobject.Properties["ComputeRackUnit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RunningFirmware"))) { #optional property not found
            $RunningFirmware = $null
        } else {
            $RunningFirmware = $JsonParameters.PSobject.Properties["RunningFirmware"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SystemBootOrder"))) { #optional property not found
            $SystemBootOrder = $null
        } else {
            $SystemBootOrder = $JsonParameters.PSobject.Properties["SystemBootOrder"].value
        }

        $PSO = [PSCustomObject]@{
            "InitSeq" = ${InitSeq}
            "InitTs" = ${InitTs}
            "ComputeBlade" = ${ComputeBlade}
            "ComputeRackUnit" = ${ComputeRackUnit}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "RunningFirmware" = ${RunningFirmware}
            "SystemBootOrder" = ${SystemBootOrder}
        }

        return $PSO
    }

}
