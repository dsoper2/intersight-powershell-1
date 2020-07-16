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

Definition of the list of properties defined in 'storage.FlexFlashVirtualDrive', excluding properties defined in parent classes.

.PARAMETER DriveScope
The drive scope of the flex flash virtual drive.
.PARAMETER DriveStatus
Status of virtual drive on the flex controller.
.PARAMETER PartitionId
The partition Id of the flex flash virtual Drive.
.PARAMETER ResidentImage
The resident image on the flex flash virtual Drive.
.PARAMETER Size
Size of virtual drive on the flex controller.
.PARAMETER VirtualDrive
Virtual drive on the flex flash controller.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER StorageFlexFlashController
No description available.
.OUTPUTS

StorageFlexFlashVirtualDriveAllOf<PSCustomObject>
#>

function Initialize-IntersightStorageFlexFlashVirtualDriveAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DriveScope},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DriveStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PartitionId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ResidentImage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Size},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VirtualDrive},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageFlexFlashController}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageFlexFlashVirtualDriveAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "DriveScope" = ${DriveScope}
            "DriveStatus" = ${DriveStatus}
            "PartitionId" = ${PartitionId}
            "ResidentImage" = ${ResidentImage}
            "Size" = ${Size}
            "VirtualDrive" = ${VirtualDrive}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageFlexFlashController" = ${StorageFlexFlashController}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageFlexFlashVirtualDriveAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageFlexFlashVirtualDriveAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageFlexFlashVirtualDriveAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageFlexFlashVirtualDriveAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageFlexFlashVirtualDriveAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageFlexFlashVirtualDriveAllOf
        $AllProperties = ("DriveScope", "DriveStatus", "PartitionId", "ResidentImage", "Size", "VirtualDrive", "InventoryDeviceInfo", "RegisteredDevice", "StorageFlexFlashController")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DriveScope"))) { #optional property not found
            $DriveScope = $null
        } else {
            $DriveScope = $JsonParameters.PSobject.Properties["DriveScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DriveStatus"))) { #optional property not found
            $DriveStatus = $null
        } else {
            $DriveStatus = $JsonParameters.PSobject.Properties["DriveStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PartitionId"))) { #optional property not found
            $PartitionId = $null
        } else {
            $PartitionId = $JsonParameters.PSobject.Properties["PartitionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ResidentImage"))) { #optional property not found
            $ResidentImage = $null
        } else {
            $ResidentImage = $JsonParameters.PSobject.Properties["ResidentImage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["Size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualDrive"))) { #optional property not found
            $VirtualDrive = $null
        } else {
            $VirtualDrive = $JsonParameters.PSobject.Properties["VirtualDrive"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageFlexFlashController"))) { #optional property not found
            $StorageFlexFlashController = $null
        } else {
            $StorageFlexFlashController = $JsonParameters.PSobject.Properties["StorageFlexFlashController"].value
        }

        $PSO = [PSCustomObject]@{
            "DriveScope" = ${DriveScope}
            "DriveStatus" = ${DriveStatus}
            "PartitionId" = ${PartitionId}
            "ResidentImage" = ${ResidentImage}
            "Size" = ${Size}
            "VirtualDrive" = ${VirtualDrive}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageFlexFlashController" = ${StorageFlexFlashController}
        }

        return $PSO
    }

}
