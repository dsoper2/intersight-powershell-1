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

Definition of the list of properties defined in 'firmware.RunningFirmware', excluding properties defined in parent classes.

.PARAMETER BiosUnit
No description available.
.PARAMETER GraphicsCard
No description available.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER ManagementController
No description available.
.PARAMETER NetworkElements
An array of relationships to networkElement resources.
.PARAMETER PciSwitch
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER StorageController
No description available.
.PARAMETER StorageFlexFlashController
No description available.
.PARAMETER StoragePhysicalDisk
No description available.
.OUTPUTS

FirmwareRunningFirmwareAllOf<PSCustomObject>
#>

function Initialize-IntersightFirmwareRunningFirmwareAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BiosUnit},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${GraphicsCard},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ManagementController},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${NetworkElements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PciSwitch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageController},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageFlexFlashController},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StoragePhysicalDisk}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFirmwareRunningFirmwareAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "BiosUnit" = ${BiosUnit}
            "GraphicsCard" = ${GraphicsCard}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "ManagementController" = ${ManagementController}
            "NetworkElements" = ${NetworkElements}
            "PciSwitch" = ${PciSwitch}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageController" = ${StorageController}
            "StorageFlexFlashController" = ${StorageFlexFlashController}
            "StoragePhysicalDisk" = ${StoragePhysicalDisk}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FirmwareRunningFirmwareAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FirmwareRunningFirmwareAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FirmwareRunningFirmwareAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFirmwareRunningFirmwareAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFirmwareRunningFirmwareAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFirmwareRunningFirmwareAllOf
        $AllProperties = ("Component", "PackageVersion", "Type", "Version", "BiosUnit", "GraphicsCard", "InventoryDeviceInfo", "ManagementController", "NetworkElements", "PciSwitch", "RegisteredDevice", "StorageController", "StorageFlexFlashController", "StoragePhysicalDisk")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Component"))) { #optional property not found
            $Component = $null
        } else {
            $Component = $JsonParameters.PSobject.Properties["Component"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PackageVersion"))) { #optional property not found
            $PackageVersion = $null
        } else {
            $PackageVersion = $JsonParameters.PSobject.Properties["PackageVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["Version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BiosUnit"))) { #optional property not found
            $BiosUnit = $null
        } else {
            $BiosUnit = $JsonParameters.PSobject.Properties["BiosUnit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "GraphicsCard"))) { #optional property not found
            $GraphicsCard = $null
        } else {
            $GraphicsCard = $JsonParameters.PSobject.Properties["GraphicsCard"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ManagementController"))) { #optional property not found
            $ManagementController = $null
        } else {
            $ManagementController = $JsonParameters.PSobject.Properties["ManagementController"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkElements"))) { #optional property not found
            $NetworkElements = $null
        } else {
            $NetworkElements = $JsonParameters.PSobject.Properties["NetworkElements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PciSwitch"))) { #optional property not found
            $PciSwitch = $null
        } else {
            $PciSwitch = $JsonParameters.PSobject.Properties["PciSwitch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageController"))) { #optional property not found
            $StorageController = $null
        } else {
            $StorageController = $JsonParameters.PSobject.Properties["StorageController"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageFlexFlashController"))) { #optional property not found
            $StorageFlexFlashController = $null
        } else {
            $StorageFlexFlashController = $JsonParameters.PSobject.Properties["StorageFlexFlashController"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StoragePhysicalDisk"))) { #optional property not found
            $StoragePhysicalDisk = $null
        } else {
            $StoragePhysicalDisk = $JsonParameters.PSobject.Properties["StoragePhysicalDisk"].value
        }

        $PSO = [PSCustomObject]@{
            "Component" = ${Component}
            "PackageVersion" = ${PackageVersion}
            "Type" = ${Type}
            "Version" = ${Version}
            "BiosUnit" = ${BiosUnit}
            "GraphicsCard" = ${GraphicsCard}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "ManagementController" = ${ManagementController}
            "NetworkElements" = ${NetworkElements}
            "PciSwitch" = ${PciSwitch}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageController" = ${StorageController}
            "StorageFlexFlashController" = ${StorageFlexFlashController}
            "StoragePhysicalDisk" = ${StoragePhysicalDisk}
        }

        return $PSO
    }

}

