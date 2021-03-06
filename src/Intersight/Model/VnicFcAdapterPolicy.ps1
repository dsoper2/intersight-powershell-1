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

A Fibre Channel Adapter policy governs the host-side behavior of the adapter, including how the adapter handles traffic. You can enable FCP Error Recovery, change the default settings of Queues and Interrupt handling for performance enhancement.

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
.PARAMETER Description
Description of the policy.
.PARAMETER Name
Name of the concrete policy.
.PARAMETER ErrorDetectionTimeout
Error Detection Timeout, also referred to as EDTOV, is the number of milliseconds to wait before the system assumes that an error has occurred.
.PARAMETER ErrorRecoverySettings
No description available.
.PARAMETER FlogiSettings
No description available.
.PARAMETER InterruptSettings
No description available.
.PARAMETER IoThrottleCount
The maximum number of data or control I/O operations that can be pending for the virtual interface at one time. If this value is exceeded, the additional I/O operations wait in the queue until the number of pending I/O operations decreases and the additional operations can be processed.
.PARAMETER LunCount
The maximum number of LUNs that the Fibre Channel driver will export or show. The maximum number of LUNs is usually controlled by the operating system running on the server.
.PARAMETER LunQueueDepth
The number of commands that the HBA can send and receive in a single transmission per LUN.
.PARAMETER PlogiSettings
No description available.
.PARAMETER ResourceAllocationTimeout
Resource Allocation Timeout, also referred to as RATOV, is the number of milliseconds to wait before the system assumes that a resource cannot be properly allocated.
.PARAMETER RxQueueSettings
No description available.
.PARAMETER ScsiQueueSettings
No description available.
.PARAMETER TxQueueSettings
No description available.
.PARAMETER Organization
No description available.
.OUTPUTS

VnicFcAdapterPolicy<PSCustomObject>
#>

function Initialize-IntersightVnicFcAdapterPolicy {
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
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'.:-]*$")]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ErrorDetectionTimeout},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ErrorRecoverySettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FlogiSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InterruptSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${IoThrottleCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${LunCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${LunQueueDepth},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PlogiSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ResourceAllocationTimeout},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RxQueueSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ScsiQueueSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TxQueueSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVnicFcAdapterPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Description -and $Description.length -gt 1024) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 1024."
        }

        if (!$ErrorDetectionTimeout -and $ErrorDetectionTimeout -gt 100000) {
          throw "invalid value for 'ErrorDetectionTimeout', must be smaller than or equal to 100000."
        }

        if (!$ErrorDetectionTimeout -and $ErrorDetectionTimeout -lt 1000) {
          throw "invalid value for 'ErrorDetectionTimeout', must be greater than or equal to 1000."
        }

        if (!$IoThrottleCount -and $IoThrottleCount -gt 1024) {
          throw "invalid value for 'IoThrottleCount', must be smaller than or equal to 1024."
        }

        if (!$IoThrottleCount -and $IoThrottleCount -lt 1) {
          throw "invalid value for 'IoThrottleCount', must be greater than or equal to 1."
        }

        if (!$LunCount -and $LunCount -gt 1024) {
          throw "invalid value for 'LunCount', must be smaller than or equal to 1024."
        }

        if (!$LunCount -and $LunCount -lt 1) {
          throw "invalid value for 'LunCount', must be greater than or equal to 1."
        }

        if (!$LunQueueDepth -and $LunQueueDepth -gt 254) {
          throw "invalid value for 'LunQueueDepth', must be smaller than or equal to 254."
        }

        if (!$LunQueueDepth -and $LunQueueDepth -lt 1) {
          throw "invalid value for 'LunQueueDepth', must be greater than or equal to 1."
        }

        if (!$ResourceAllocationTimeout -and $ResourceAllocationTimeout -gt 100000) {
          throw "invalid value for 'ResourceAllocationTimeout', must be smaller than or equal to 100000."
        }

        if (!$ResourceAllocationTimeout -and $ResourceAllocationTimeout -lt 5000) {
          throw "invalid value for 'ResourceAllocationTimeout', must be greater than or equal to 5000."
        }

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Description" = ${Description}
            "Name" = ${Name}
            "ErrorDetectionTimeout" = ${ErrorDetectionTimeout}
            "ErrorRecoverySettings" = ${ErrorRecoverySettings}
            "FlogiSettings" = ${FlogiSettings}
            "InterruptSettings" = ${InterruptSettings}
            "IoThrottleCount" = ${IoThrottleCount}
            "LunCount" = ${LunCount}
            "LunQueueDepth" = ${LunQueueDepth}
            "PlogiSettings" = ${PlogiSettings}
            "ResourceAllocationTimeout" = ${ResourceAllocationTimeout}
            "RxQueueSettings" = ${RxQueueSettings}
            "ScsiQueueSettings" = ${ScsiQueueSettings}
            "TxQueueSettings" = ${TxQueueSettings}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VnicFcAdapterPolicy<PSCustomObject>

.DESCRIPTION

Convert from JSON to VnicFcAdapterPolicy<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VnicFcAdapterPolicy<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVnicFcAdapterPolicy {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVnicFcAdapterPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVnicFcAdapterPolicy
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Description", "Name", "ErrorDetectionTimeout", "ErrorRecoverySettings", "FlogiSettings", "InterruptSettings", "IoThrottleCount", "LunCount", "LunQueueDepth", "PlogiSettings", "ResourceAllocationTimeout", "RxQueueSettings", "ScsiQueueSettings", "TxQueueSettings", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ErrorDetectionTimeout"))) { #optional property not found
            $ErrorDetectionTimeout = $null
        } else {
            $ErrorDetectionTimeout = $JsonParameters.PSobject.Properties["ErrorDetectionTimeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ErrorRecoverySettings"))) { #optional property not found
            $ErrorRecoverySettings = $null
        } else {
            $ErrorRecoverySettings = $JsonParameters.PSobject.Properties["ErrorRecoverySettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FlogiSettings"))) { #optional property not found
            $FlogiSettings = $null
        } else {
            $FlogiSettings = $JsonParameters.PSobject.Properties["FlogiSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InterruptSettings"))) { #optional property not found
            $InterruptSettings = $null
        } else {
            $InterruptSettings = $JsonParameters.PSobject.Properties["InterruptSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IoThrottleCount"))) { #optional property not found
            $IoThrottleCount = $null
        } else {
            $IoThrottleCount = $JsonParameters.PSobject.Properties["IoThrottleCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LunCount"))) { #optional property not found
            $LunCount = $null
        } else {
            $LunCount = $JsonParameters.PSobject.Properties["LunCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LunQueueDepth"))) { #optional property not found
            $LunQueueDepth = $null
        } else {
            $LunQueueDepth = $JsonParameters.PSobject.Properties["LunQueueDepth"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PlogiSettings"))) { #optional property not found
            $PlogiSettings = $null
        } else {
            $PlogiSettings = $JsonParameters.PSobject.Properties["PlogiSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ResourceAllocationTimeout"))) { #optional property not found
            $ResourceAllocationTimeout = $null
        } else {
            $ResourceAllocationTimeout = $JsonParameters.PSobject.Properties["ResourceAllocationTimeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RxQueueSettings"))) { #optional property not found
            $RxQueueSettings = $null
        } else {
            $RxQueueSettings = $JsonParameters.PSobject.Properties["RxQueueSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ScsiQueueSettings"))) { #optional property not found
            $ScsiQueueSettings = $null
        } else {
            $ScsiQueueSettings = $JsonParameters.PSobject.Properties["ScsiQueueSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TxQueueSettings"))) { #optional property not found
            $TxQueueSettings = $null
        } else {
            $TxQueueSettings = $JsonParameters.PSobject.Properties["TxQueueSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
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
            "Description" = ${Description}
            "Name" = ${Name}
            "ErrorDetectionTimeout" = ${ErrorDetectionTimeout}
            "ErrorRecoverySettings" = ${ErrorRecoverySettings}
            "FlogiSettings" = ${FlogiSettings}
            "InterruptSettings" = ${InterruptSettings}
            "IoThrottleCount" = ${IoThrottleCount}
            "LunCount" = ${LunCount}
            "LunQueueDepth" = ${LunQueueDepth}
            "PlogiSettings" = ${PlogiSettings}
            "ResourceAllocationTimeout" = ${ResourceAllocationTimeout}
            "RxQueueSettings" = ${RxQueueSettings}
            "ScsiQueueSettings" = ${ScsiQueueSettings}
            "TxQueueSettings" = ${TxQueueSettings}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

