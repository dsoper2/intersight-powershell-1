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

Definition of the list of properties defined in 'storage.DiskGroup', excluding properties defined in parent classes.

.PARAMETER Name
Name to identity this disk group in the controller.
.PARAMETER RaidType
Raid level of the virtual drives in this diskgroup.
.PARAMETER DedicatedHotSpares
An array of relationships to storagePhysicalDisk resources.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER Spans
An array of relationships to storageSpan resources.
.PARAMETER StorageController
No description available.
.PARAMETER VirtualDrives
An array of relationships to storageVirtualDrive resources.
.OUTPUTS

StorageDiskGroupAllOf<PSCustomObject>
#>

function Initialize-IntersightStorageDiskGroupAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RaidType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DedicatedHotSpares},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Spans},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageController},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VirtualDrives}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageDiskGroupAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Name" = ${Name}
            "RaidType" = ${RaidType}
            "DedicatedHotSpares" = ${DedicatedHotSpares}
            "RegisteredDevice" = ${RegisteredDevice}
            "Spans" = ${Spans}
            "StorageController" = ${StorageController}
            "VirtualDrives" = ${VirtualDrives}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageDiskGroupAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageDiskGroupAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageDiskGroupAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageDiskGroupAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageDiskGroupAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageDiskGroupAllOf
        $AllProperties = ("Name", "RaidType", "DedicatedHotSpares", "RegisteredDevice", "Spans", "StorageController", "VirtualDrives")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RaidType"))) { #optional property not found
            $RaidType = $null
        } else {
            $RaidType = $JsonParameters.PSobject.Properties["RaidType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DedicatedHotSpares"))) { #optional property not found
            $DedicatedHotSpares = $null
        } else {
            $DedicatedHotSpares = $JsonParameters.PSobject.Properties["DedicatedHotSpares"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Spans"))) { #optional property not found
            $Spans = $null
        } else {
            $Spans = $JsonParameters.PSobject.Properties["Spans"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageController"))) { #optional property not found
            $StorageController = $null
        } else {
            $StorageController = $JsonParameters.PSobject.Properties["StorageController"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualDrives"))) { #optional property not found
            $VirtualDrives = $null
        } else {
            $VirtualDrives = $JsonParameters.PSobject.Properties["VirtualDrives"].value
        }

        $PSO = [PSCustomObject]@{
            "Name" = ${Name}
            "RaidType" = ${RaidType}
            "DedicatedHotSpares" = ${DedicatedHotSpares}
            "RegisteredDevice" = ${RegisteredDevice}
            "Spans" = ${Spans}
            "StorageController" = ${StorageController}
            "VirtualDrives" = ${VirtualDrives}
        }

        return $PSO
    }

}
