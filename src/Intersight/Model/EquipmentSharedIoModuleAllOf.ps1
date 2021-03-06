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

Definition of the list of properties defined in 'equipment.SharedIoModule', excluding properties defined in parent classes.

.PARAMETER Controller
No description available.
.PARAMETER EquipmentSystemIoController
No description available.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

EquipmentSharedIoModuleAllOf<PSCustomObject>
#>

function Initialize-IntersightEquipmentSharedIoModuleAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Controller},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EquipmentSystemIoController},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightEquipmentSharedIoModuleAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Controller" = ${Controller}
            "EquipmentSystemIoController" = ${EquipmentSystemIoController}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EquipmentSharedIoModuleAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to EquipmentSharedIoModuleAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EquipmentSharedIoModuleAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToEquipmentSharedIoModuleAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightEquipmentSharedIoModuleAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightEquipmentSharedIoModuleAllOf
        $AllProperties = ("ConfigState", "Discovery", "MacOfSharedIomAside", "MacOfSharedIomBside", "OperState", "PartNumber", "Reachability", "UsrLbl", "Vid", "Controller", "EquipmentSystemIoController", "InventoryDeviceInfo", "PortGroups", "RegisteredDevice")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigState"))) { #optional property not found
            $ConfigState = $null
        } else {
            $ConfigState = $JsonParameters.PSobject.Properties["ConfigState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Discovery"))) { #optional property not found
            $Discovery = $null
        } else {
            $Discovery = $JsonParameters.PSobject.Properties["Discovery"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MacOfSharedIomAside"))) { #optional property not found
            $MacOfSharedIomAside = $null
        } else {
            $MacOfSharedIomAside = $JsonParameters.PSobject.Properties["MacOfSharedIomAside"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MacOfSharedIomBside"))) { #optional property not found
            $MacOfSharedIomBside = $null
        } else {
            $MacOfSharedIomBside = $JsonParameters.PSobject.Properties["MacOfSharedIomBside"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperState"))) { #optional property not found
            $OperState = $null
        } else {
            $OperState = $JsonParameters.PSobject.Properties["OperState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PartNumber"))) { #optional property not found
            $PartNumber = $null
        } else {
            $PartNumber = $JsonParameters.PSobject.Properties["PartNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Reachability"))) { #optional property not found
            $Reachability = $null
        } else {
            $Reachability = $JsonParameters.PSobject.Properties["Reachability"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UsrLbl"))) { #optional property not found
            $UsrLbl = $null
        } else {
            $UsrLbl = $JsonParameters.PSobject.Properties["UsrLbl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vid"))) { #optional property not found
            $Vid = $null
        } else {
            $Vid = $JsonParameters.PSobject.Properties["Vid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Controller"))) { #optional property not found
            $Controller = $null
        } else {
            $Controller = $JsonParameters.PSobject.Properties["Controller"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EquipmentSystemIoController"))) { #optional property not found
            $EquipmentSystemIoController = $null
        } else {
            $EquipmentSystemIoController = $JsonParameters.PSobject.Properties["EquipmentSystemIoController"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortGroups"))) { #optional property not found
            $PortGroups = $null
        } else {
            $PortGroups = $JsonParameters.PSobject.Properties["PortGroups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        $PSO = [PSCustomObject]@{
            "ConfigState" = ${ConfigState}
            "Discovery" = ${Discovery}
            "MacOfSharedIomAside" = ${MacOfSharedIomAside}
            "MacOfSharedIomBside" = ${MacOfSharedIomBside}
            "OperState" = ${OperState}
            "PartNumber" = ${PartNumber}
            "Reachability" = ${Reachability}
            "UsrLbl" = ${UsrLbl}
            "Vid" = ${Vid}
            "Controller" = ${Controller}
            "EquipmentSystemIoController" = ${EquipmentSystemIoController}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PortGroups" = ${PortGroups}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

