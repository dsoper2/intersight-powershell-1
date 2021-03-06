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

A state-full entity representing a found problem. Alarms can be reported by the managed system itself or can be determined by Intersight.

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
.PARAMETER AffectedMoId
MoId of the affected object from the managed system's point of view.
.PARAMETER AffectedMoType
Managed system affected object type. For example Adaptor, FI, CIMC.
.PARAMETER AffectedObject
A unique key for an alarm instance, consists of a combination of a unique system name and msAffectedObject.
.PARAMETER AncestorMoId
Parent MoId of the fault from managed system. For example, Blade moid for adaptor fault.
.PARAMETER AncestorMoType
Parent MO type of the fault from managed system. For example, Blade for adaptor fault.
.PARAMETER Code
A unique alarm code. For alarms mapped from UCS faults, this will be the same as the UCS fault code.
.PARAMETER CreationTime
The time the alarm was created.
.PARAMETER Description
A longer description of the alarm than the name. The description contains details of the component reporting the issue.
.PARAMETER LastTransitionTime
The time the alarm last had a change in severity.
.PARAMETER MsAffectedObject
A unique key for the alarm from the managed system's point of view. For example, in the case of UCS, this is the fault's dn.
.PARAMETER Name
Uniquely identifies the type of alarm. For alarms originating from Intersight, this will be a descriptive name. For alarms that are mapped from faults, the name will be derived from fault properties. For example, alarms mapped from UCS faults will use a prefix of UCS and appended with the fault code.
.PARAMETER OrigSeverity
The original severity when the alarm was first created.
.PARAMETER Severity
The severity of the alarm. Valid values are Critical, Warning, Info, and Cleared.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

CondAlarm<PSCustomObject>
#>

function Initialize-IntersightCondAlarm {
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
        [String]
        ${AffectedMoId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AffectedMoType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AffectedObject},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AncestorMoId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AncestorMoType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Code},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreationTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastTransitionTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MsAffectedObject},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "Info", "Critical", "Warning", "Cleared")]
        [String]
        ${OrigSeverity} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "Info", "Critical", "Warning", "Cleared")]
        [String]
        ${Severity} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightCondAlarm' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "AffectedMoId" = ${AffectedMoId}
            "AffectedMoType" = ${AffectedMoType}
            "AffectedObject" = ${AffectedObject}
            "AncestorMoId" = ${AncestorMoId}
            "AncestorMoType" = ${AncestorMoType}
            "Code" = ${Code}
            "CreationTime" = ${CreationTime}
            "Description" = ${Description}
            "LastTransitionTime" = ${LastTransitionTime}
            "MsAffectedObject" = ${MsAffectedObject}
            "Name" = ${Name}
            "OrigSeverity" = ${OrigSeverity}
            "Severity" = ${Severity}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CondAlarm<PSCustomObject>

.DESCRIPTION

Convert from JSON to CondAlarm<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CondAlarm<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToCondAlarm {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightCondAlarm' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightCondAlarm
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "AffectedMoId", "AffectedMoType", "AffectedObject", "AncestorMoId", "AncestorMoType", "Code", "CreationTime", "Description", "LastTransitionTime", "MsAffectedObject", "Name", "OrigSeverity", "Severity", "RegisteredDevice")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AffectedMoId"))) { #optional property not found
            $AffectedMoId = $null
        } else {
            $AffectedMoId = $JsonParameters.PSobject.Properties["AffectedMoId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AffectedMoType"))) { #optional property not found
            $AffectedMoType = $null
        } else {
            $AffectedMoType = $JsonParameters.PSobject.Properties["AffectedMoType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AffectedObject"))) { #optional property not found
            $AffectedObject = $null
        } else {
            $AffectedObject = $JsonParameters.PSobject.Properties["AffectedObject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AncestorMoId"))) { #optional property not found
            $AncestorMoId = $null
        } else {
            $AncestorMoId = $JsonParameters.PSobject.Properties["AncestorMoId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AncestorMoType"))) { #optional property not found
            $AncestorMoType = $null
        } else {
            $AncestorMoType = $JsonParameters.PSobject.Properties["AncestorMoType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Code"))) { #optional property not found
            $Code = $null
        } else {
            $Code = $JsonParameters.PSobject.Properties["Code"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreationTime"))) { #optional property not found
            $CreationTime = $null
        } else {
            $CreationTime = $JsonParameters.PSobject.Properties["CreationTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastTransitionTime"))) { #optional property not found
            $LastTransitionTime = $null
        } else {
            $LastTransitionTime = $JsonParameters.PSobject.Properties["LastTransitionTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MsAffectedObject"))) { #optional property not found
            $MsAffectedObject = $null
        } else {
            $MsAffectedObject = $JsonParameters.PSobject.Properties["MsAffectedObject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OrigSeverity"))) { #optional property not found
            $OrigSeverity = $null
        } else {
            $OrigSeverity = $JsonParameters.PSobject.Properties["OrigSeverity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Severity"))) { #optional property not found
            $Severity = $null
        } else {
            $Severity = $JsonParameters.PSobject.Properties["Severity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
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
            "AffectedMoId" = ${AffectedMoId}
            "AffectedMoType" = ${AffectedMoType}
            "AffectedObject" = ${AffectedObject}
            "AncestorMoId" = ${AncestorMoId}
            "AncestorMoType" = ${AncestorMoType}
            "Code" = ${Code}
            "CreationTime" = ${CreationTime}
            "Description" = ${Description}
            "LastTransitionTime" = ${LastTransitionTime}
            "MsAffectedObject" = ${MsAffectedObject}
            "Name" = ${Name}
            "OrigSeverity" = ${OrigSeverity}
            "Severity" = ${Severity}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

