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

Identity object that uniquely represents a blade server object under a DR.

.PARAMETER Moid
The unique identifier of this Managed Object instance.
.PARAMETER Owners
No description available.
.PARAMETER Tags
No description available.
.PARAMETER VersionContext
No description available.
.PARAMETER Parent
No description available.
.PARAMETER AdminAction
Updated by UI/API to trigger specific chassis action type.
.PARAMETER AdminActionState
The state of Maintenance Action performed. This will have three states. Applying - Action is in progress. Applied - Action is completed and applied. Failed - Action has failed.
.PARAMETER Identifier
Numeric Identifier assigned by the management system to the equipment.
.PARAMETER Lifecycle
The equipment's lifecycle status.
.PARAMETER Model
The vendor provided model name for the equipment.
.PARAMETER Serial
The serial number of the equipment.
.PARAMETER Vendor
The manufacturer of the equipment.
.PARAMETER DeviceRegistration
No description available.
.PARAMETER PhysicalDeviceRegistration
No description available.
.PARAMETER ChassisId
Chassis Identifier of a blade server.
.PARAMETER DeviceMoId
FI Device registration Mo ID.
.PARAMETER PendingDiscovery
Indicates pending discovery flag.
.PARAMETER SlotId
Chassis slot number of a blade server.
.OUTPUTS

ComputeBladeIdentity<PSCustomObject>
#>

function Initialize-IntersightComputeBladeIdentity {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Owners},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VersionContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "Decommission", "Recommission", "Reack", "Remove")]
        [String]
        ${AdminAction} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "Applied", "Applying", "Failed")]
        [String]
        ${AdminActionState} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Identifier},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "Active", "Decommissioned", "DecommissionInProgress", "RecommissionInProgress", "OperationFailed", "ReackInProgress", "RemoveInProgress", "Discovered", "DiscoveryInProgress", "DiscoveryFailed")]
        [String]
        ${Lifecycle} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Model},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Serial},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Vendor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DeviceRegistration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PhysicalDeviceRegistration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ChassisId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceMoId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PendingDiscovery},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SlotId}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightComputeBladeIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "AdminAction" = ${AdminAction}
            "AdminActionState" = ${AdminActionState}
            "Identifier" = ${Identifier}
            "Lifecycle" = ${Lifecycle}
            "Model" = ${Model}
            "Serial" = ${Serial}
            "Vendor" = ${Vendor}
            "DeviceRegistration" = ${DeviceRegistration}
            "PhysicalDeviceRegistration" = ${PhysicalDeviceRegistration}
            "ChassisId" = ${ChassisId}
            "DeviceMoId" = ${DeviceMoId}
            "PendingDiscovery" = ${PendingDiscovery}
            "SlotId" = ${SlotId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ComputeBladeIdentity<PSCustomObject>

.DESCRIPTION

Convert from JSON to ComputeBladeIdentity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ComputeBladeIdentity<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToComputeBladeIdentity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightComputeBladeIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightComputeBladeIdentity
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "AdminAction", "AdminActionState", "Identifier", "Lifecycle", "Model", "Serial", "Vendor", "DeviceRegistration", "PhysicalDeviceRegistration", "ChassisId", "DeviceMoId", "PendingDiscovery", "SlotId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccountMoid"))) { #optional property not found
            $AccountMoid = $null
        } else {
            $AccountMoid = $JsonParameters.PSobject.Properties["AccountMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreateTime"))) { #optional property not found
            $CreateTime = $null
        } else {
            $CreateTime = $JsonParameters.PSobject.Properties["CreateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroupMoid"))) { #optional property not found
            $DomainGroupMoid = $null
        } else {
            $DomainGroupMoid = $JsonParameters.PSobject.Properties["DomainGroupMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ModTime"))) { #optional property not found
            $ModTime = $null
        } else {
            $ModTime = $JsonParameters.PSobject.Properties["ModTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Moid"))) { #optional property not found
            $Moid = $null
        } else {
            $Moid = $JsonParameters.PSobject.Properties["Moid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Owners"))) { #optional property not found
            $Owners = $null
        } else {
            $Owners = $JsonParameters.PSobject.Properties["Owners"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SharedScope"))) { #optional property not found
            $SharedScope = $null
        } else {
            $SharedScope = $JsonParameters.PSobject.Properties["SharedScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["Tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionContext"))) { #optional property not found
            $VersionContext = $null
        } else {
            $VersionContext = $JsonParameters.PSobject.Properties["VersionContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ancestors"))) { #optional property not found
            $Ancestors = $null
        } else {
            $Ancestors = $JsonParameters.PSobject.Properties["Ancestors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parent"))) { #optional property not found
            $Parent = $null
        } else {
            $Parent = $JsonParameters.PSobject.Properties["Parent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PermissionResources"))) { #optional property not found
            $PermissionResources = $null
        } else {
            $PermissionResources = $JsonParameters.PSobject.Properties["PermissionResources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayNames"))) { #optional property not found
            $DisplayNames = $null
        } else {
            $DisplayNames = $JsonParameters.PSobject.Properties["DisplayNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminAction"))) { #optional property not found
            $AdminAction = $null
        } else {
            $AdminAction = $JsonParameters.PSobject.Properties["AdminAction"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminActionState"))) { #optional property not found
            $AdminActionState = $null
        } else {
            $AdminActionState = $JsonParameters.PSobject.Properties["AdminActionState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Identifier"))) { #optional property not found
            $Identifier = $null
        } else {
            $Identifier = $JsonParameters.PSobject.Properties["Identifier"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Lifecycle"))) { #optional property not found
            $Lifecycle = $null
        } else {
            $Lifecycle = $JsonParameters.PSobject.Properties["Lifecycle"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Model"))) { #optional property not found
            $Model = $null
        } else {
            $Model = $JsonParameters.PSobject.Properties["Model"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Serial"))) { #optional property not found
            $Serial = $null
        } else {
            $Serial = $JsonParameters.PSobject.Properties["Serial"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vendor"))) { #optional property not found
            $Vendor = $null
        } else {
            $Vendor = $JsonParameters.PSobject.Properties["Vendor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceRegistration"))) { #optional property not found
            $DeviceRegistration = $null
        } else {
            $DeviceRegistration = $JsonParameters.PSobject.Properties["DeviceRegistration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PhysicalDeviceRegistration"))) { #optional property not found
            $PhysicalDeviceRegistration = $null
        } else {
            $PhysicalDeviceRegistration = $JsonParameters.PSobject.Properties["PhysicalDeviceRegistration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ChassisId"))) { #optional property not found
            $ChassisId = $null
        } else {
            $ChassisId = $JsonParameters.PSobject.Properties["ChassisId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceMoId"))) { #optional property not found
            $DeviceMoId = $null
        } else {
            $DeviceMoId = $JsonParameters.PSobject.Properties["DeviceMoId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PendingDiscovery"))) { #optional property not found
            $PendingDiscovery = $null
        } else {
            $PendingDiscovery = $JsonParameters.PSobject.Properties["PendingDiscovery"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SlotId"))) { #optional property not found
            $SlotId = $null
        } else {
            $SlotId = $JsonParameters.PSobject.Properties["SlotId"].value
        }

        $PSO = [PSCustomObject]@{
            "AccountMoid" = ${AccountMoid}
            "ClassId" = ${ClassId}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "ObjectType" = ${ObjectType}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "AdminAction" = ${AdminAction}
            "AdminActionState" = ${AdminActionState}
            "Identifier" = ${Identifier}
            "Lifecycle" = ${Lifecycle}
            "Model" = ${Model}
            "Serial" = ${Serial}
            "Vendor" = ${Vendor}
            "DeviceRegistration" = ${DeviceRegistration}
            "PhysicalDeviceRegistration" = ${PhysicalDeviceRegistration}
            "ChassisId" = ${ChassisId}
            "DeviceMoId" = ${DeviceMoId}
            "PendingDiscovery" = ${PendingDiscovery}
            "SlotId" = ${SlotId}
        }

        return $PSO
    }

}

