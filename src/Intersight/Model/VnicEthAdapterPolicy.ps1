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

An Ethernet adapter policy governs the host-side behavior of the adapter, including how the adapter handles traffic. For each VIC Virtual Ethernet Interface various features like VXLAN, NVGRE, ARFS, Interrupt settings, and TCP Offload settings can be configured.

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
.PARAMETER AdvancedFilter
Enables advanced filtering on the interface.
.PARAMETER ArfsSettings
No description available.
.PARAMETER CompletionQueueSettings
No description available.
.PARAMETER InterruptScaling
Enables Interrupt Scaling on the interface.
.PARAMETER InterruptSettings
No description available.
.PARAMETER NvgreSettings
No description available.
.PARAMETER RoceSettings
No description available.
.PARAMETER RssHashSettings
No description available.
.PARAMETER RssSettings
Receive Side Scaling allows the incoming traffic to be spread across multiple CPU cores.
.PARAMETER RxQueueSettings
No description available.
.PARAMETER TcpOffloadSettings
No description available.
.PARAMETER TxQueueSettings
No description available.
.PARAMETER UplinkFailbackTimeout
Uplink Failback Timeout in seconds when uplink failover is enabled for a vNIC. After a vNIC has started using its secondary interface, this setting controls how long the primary interface must be available before the system resumes using the primary interface for the vNIC.
.PARAMETER VxlanSettings
No description available.
.PARAMETER Organization
No description available.
.OUTPUTS

VnicEthAdapterPolicy<PSCustomObject>
#>

function Initialize-IntersightVnicEthAdapterPolicy {
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
        [System.Nullable[Boolean]]
        ${AdvancedFilter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ArfsSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CompletionQueueSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${InterruptScaling},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InterruptSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NvgreSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RoceSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RssHashSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RssSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RxQueueSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TcpOffloadSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TxQueueSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${UplinkFailbackTimeout},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VxlanSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVnicEthAdapterPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Description -and $Description.length -gt 1024) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 1024."
        }

        if (!$UplinkFailbackTimeout -and $UplinkFailbackTimeout -gt 600) {
          throw "invalid value for 'UplinkFailbackTimeout', must be smaller than or equal to 600."
        }

        if (!$UplinkFailbackTimeout -and $UplinkFailbackTimeout -lt 0) {
          throw "invalid value for 'UplinkFailbackTimeout', must be greater than or equal to 0."
        }

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Description" = ${Description}
            "Name" = ${Name}
            "AdvancedFilter" = ${AdvancedFilter}
            "ArfsSettings" = ${ArfsSettings}
            "CompletionQueueSettings" = ${CompletionQueueSettings}
            "InterruptScaling" = ${InterruptScaling}
            "InterruptSettings" = ${InterruptSettings}
            "NvgreSettings" = ${NvgreSettings}
            "RoceSettings" = ${RoceSettings}
            "RssHashSettings" = ${RssHashSettings}
            "RssSettings" = ${RssSettings}
            "RxQueueSettings" = ${RxQueueSettings}
            "TcpOffloadSettings" = ${TcpOffloadSettings}
            "TxQueueSettings" = ${TxQueueSettings}
            "UplinkFailbackTimeout" = ${UplinkFailbackTimeout}
            "VxlanSettings" = ${VxlanSettings}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VnicEthAdapterPolicy<PSCustomObject>

.DESCRIPTION

Convert from JSON to VnicEthAdapterPolicy<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VnicEthAdapterPolicy<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVnicEthAdapterPolicy {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVnicEthAdapterPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVnicEthAdapterPolicy
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Description", "Name", "AdvancedFilter", "ArfsSettings", "CompletionQueueSettings", "InterruptScaling", "InterruptSettings", "NvgreSettings", "RoceSettings", "RssHashSettings", "RssSettings", "RxQueueSettings", "TcpOffloadSettings", "TxQueueSettings", "UplinkFailbackTimeout", "VxlanSettings", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdvancedFilter"))) { #optional property not found
            $AdvancedFilter = $null
        } else {
            $AdvancedFilter = $JsonParameters.PSobject.Properties["AdvancedFilter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ArfsSettings"))) { #optional property not found
            $ArfsSettings = $null
        } else {
            $ArfsSettings = $JsonParameters.PSobject.Properties["ArfsSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CompletionQueueSettings"))) { #optional property not found
            $CompletionQueueSettings = $null
        } else {
            $CompletionQueueSettings = $JsonParameters.PSobject.Properties["CompletionQueueSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InterruptScaling"))) { #optional property not found
            $InterruptScaling = $null
        } else {
            $InterruptScaling = $JsonParameters.PSobject.Properties["InterruptScaling"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InterruptSettings"))) { #optional property not found
            $InterruptSettings = $null
        } else {
            $InterruptSettings = $JsonParameters.PSobject.Properties["InterruptSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NvgreSettings"))) { #optional property not found
            $NvgreSettings = $null
        } else {
            $NvgreSettings = $JsonParameters.PSobject.Properties["NvgreSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RoceSettings"))) { #optional property not found
            $RoceSettings = $null
        } else {
            $RoceSettings = $JsonParameters.PSobject.Properties["RoceSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RssHashSettings"))) { #optional property not found
            $RssHashSettings = $null
        } else {
            $RssHashSettings = $JsonParameters.PSobject.Properties["RssHashSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RssSettings"))) { #optional property not found
            $RssSettings = $null
        } else {
            $RssSettings = $JsonParameters.PSobject.Properties["RssSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RxQueueSettings"))) { #optional property not found
            $RxQueueSettings = $null
        } else {
            $RxQueueSettings = $JsonParameters.PSobject.Properties["RxQueueSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TcpOffloadSettings"))) { #optional property not found
            $TcpOffloadSettings = $null
        } else {
            $TcpOffloadSettings = $JsonParameters.PSobject.Properties["TcpOffloadSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TxQueueSettings"))) { #optional property not found
            $TxQueueSettings = $null
        } else {
            $TxQueueSettings = $JsonParameters.PSobject.Properties["TxQueueSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UplinkFailbackTimeout"))) { #optional property not found
            $UplinkFailbackTimeout = $null
        } else {
            $UplinkFailbackTimeout = $JsonParameters.PSobject.Properties["UplinkFailbackTimeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VxlanSettings"))) { #optional property not found
            $VxlanSettings = $null
        } else {
            $VxlanSettings = $JsonParameters.PSobject.Properties["VxlanSettings"].value
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
            "AdvancedFilter" = ${AdvancedFilter}
            "ArfsSettings" = ${ArfsSettings}
            "CompletionQueueSettings" = ${CompletionQueueSettings}
            "InterruptScaling" = ${InterruptScaling}
            "InterruptSettings" = ${InterruptSettings}
            "NvgreSettings" = ${NvgreSettings}
            "RoceSettings" = ${RoceSettings}
            "RssHashSettings" = ${RssHashSettings}
            "RssSettings" = ${RssSettings}
            "RxQueueSettings" = ${RxQueueSettings}
            "TcpOffloadSettings" = ${TcpOffloadSettings}
            "TxQueueSettings" = ${TxQueueSettings}
            "UplinkFailbackTimeout" = ${UplinkFailbackTimeout}
            "VxlanSettings" = ${VxlanSettings}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

