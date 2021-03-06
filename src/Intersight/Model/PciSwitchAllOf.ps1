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

Definition of the list of properties defined in 'pci.Switch', excluding properties defined in parent classes.

.PARAMETER Type
The type information of the switch.
.PARAMETER ComputeBoard
No description available.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

PciSwitchAllOf<PSCustomObject>
#>

function Initialize-IntersightPciSwitchAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ComputeBoard},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightPciSwitchAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Type" = ${Type}
            "ComputeBoard" = ${ComputeBoard}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PciSwitchAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to PciSwitchAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PciSwitchAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToPciSwitchAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightPciSwitchAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightPciSwitchAllOf
        $AllProperties = ("DeviceId", "Health", "NumOfAdaptors", "PciAddress", "PciSlot", "ProductName", "ProductRevision", "SubDeviceId", "SubVendorId", "Temperature", "Type", "VendorId", "ComputeBoard", "InventoryDeviceInfo", "Links", "RegisteredDevice", "RunningFirmware")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceId"))) { #optional property not found
            $DeviceId = $null
        } else {
            $DeviceId = $JsonParameters.PSobject.Properties["DeviceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Health"))) { #optional property not found
            $Health = $null
        } else {
            $Health = $JsonParameters.PSobject.Properties["Health"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumOfAdaptors"))) { #optional property not found
            $NumOfAdaptors = $null
        } else {
            $NumOfAdaptors = $JsonParameters.PSobject.Properties["NumOfAdaptors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PciAddress"))) { #optional property not found
            $PciAddress = $null
        } else {
            $PciAddress = $JsonParameters.PSobject.Properties["PciAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PciSlot"))) { #optional property not found
            $PciSlot = $null
        } else {
            $PciSlot = $JsonParameters.PSobject.Properties["PciSlot"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductName"))) { #optional property not found
            $ProductName = $null
        } else {
            $ProductName = $JsonParameters.PSobject.Properties["ProductName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductRevision"))) { #optional property not found
            $ProductRevision = $null
        } else {
            $ProductRevision = $JsonParameters.PSobject.Properties["ProductRevision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SubDeviceId"))) { #optional property not found
            $SubDeviceId = $null
        } else {
            $SubDeviceId = $JsonParameters.PSobject.Properties["SubDeviceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SubVendorId"))) { #optional property not found
            $SubVendorId = $null
        } else {
            $SubVendorId = $JsonParameters.PSobject.Properties["SubVendorId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Temperature"))) { #optional property not found
            $Temperature = $null
        } else {
            $Temperature = $JsonParameters.PSobject.Properties["Temperature"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VendorId"))) { #optional property not found
            $VendorId = $null
        } else {
            $VendorId = $JsonParameters.PSobject.Properties["VendorId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputeBoard"))) { #optional property not found
            $ComputeBoard = $null
        } else {
            $ComputeBoard = $JsonParameters.PSobject.Properties["ComputeBoard"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["Links"].value
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

        $PSO = [PSCustomObject]@{
            "DeviceId" = ${DeviceId}
            "Health" = ${Health}
            "NumOfAdaptors" = ${NumOfAdaptors}
            "PciAddress" = ${PciAddress}
            "PciSlot" = ${PciSlot}
            "ProductName" = ${ProductName}
            "ProductRevision" = ${ProductRevision}
            "SubDeviceId" = ${SubDeviceId}
            "SubVendorId" = ${SubVendorId}
            "Temperature" = ${Temperature}
            "Type" = ${Type}
            "VendorId" = ${VendorId}
            "ComputeBoard" = ${ComputeBoard}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "Links" = ${Links}
            "RegisteredDevice" = ${RegisteredDevice}
            "RunningFirmware" = ${RunningFirmware}
        }

        return $PSO
    }

}

