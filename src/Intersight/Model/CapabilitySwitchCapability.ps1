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

Type to represent additional switch specific capabilities.

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
.PARAMETER Name
An unique identifer for a capability descriptor.
.PARAMETER Section
No description available.
.PARAMETER VarPid
Product Identifier for a Switch/Fabric-Interconnect.
.PARAMETER Sku
SKU information for Switch/Fabric-Interconnect.
.PARAMETER Vid
VID information for Switch/Fabric-Interconnect.
.PARAMETER DefaultFcoeVlan
Default Fcoe VLAN associated with this switch.
.PARAMETER DynamicVifsSupported
Dynamic VIFs support on this switch.
.PARAMETER FanModulesSupported
Fan Modules support on this switch.
.PARAMETER FcEndHostModeReservedVsans
No description available.
.PARAMETER FcUplinkPortsAutoNegotiationSupported
Fc Uplink ports auto negotiation speed support on this switch.
.PARAMETER LocatorBeaconSupported
Locator Beacon LED support on this switch.
.PARAMETER MaxActiveSpanSessions
Maximum allowed Traffic Monitoring (SPAN) sessions on this switch.
.PARAMETER MaxEthernetPortChannelMembers
Maximum allowed Ethernet Uplink Port-channel members for each Uplink Port-channel on this switch.
.PARAMETER MaxEthernetPortChannels
Maximum allowed Ethernet Uplink Port-channels on this switch.
.PARAMETER MaxEthernetUplinkPorts
Maximum allowed Ethernet Uplink Ports on this switch.
.PARAMETER MaxFcFcoePortChannels
Total maximum Fc and Fcoe Port-channels allowed on this switch.
.PARAMETER MaxFcPortChannelMembers
Maximum allowed FC Uplink Port-channel members for each FCoE Port-channel on this switch.
.PARAMETER MaxFcoePortChannelMembers
Maximum allowed FCoE Uplink Port-channel members for each FCoE Port-channel on this switch.
.PARAMETER MaxPorts
Maximum allowed physical ports on this switch.
.PARAMETER MaxSlots
Maximum allowed physical slots on this switch.
.PARAMETER MaxVsansSupported
Maximum number of Vsans supported on this switch.
.PARAMETER MinActiveFans
Minimum number of fans needed to be active/running on this switch.
.PARAMETER PortsSupporting100gSpeed
No description available.
.PARAMETER PortsSupporting10gSpeed
No description available.
.PARAMETER PortsSupporting1gSpeed
No description available.
.PARAMETER PortsSupporting25gSpeed
No description available.
.PARAMETER PortsSupporting40gSpeed
No description available.
.PARAMETER PortsSupportingBreakout
No description available.
.PARAMETER PortsSupportingFcoe
No description available.
.PARAMETER PortsSupportingServerRole
No description available.
.PARAMETER ReservedVsans
No description available.
.PARAMETER SerenoNetflowSupported
Sereno Adaptor with Netflow support on this switch.
.PARAMETER UnifiedPorts
No description available.
.PARAMETER UnifiedRule
The Slider rule for Unified ports on this switch.
.PARAMETER VpCompressionSupported
VP Compression support on this switch.
.OUTPUTS

CapabilitySwitchCapability<PSCustomObject>
#>

function Initialize-IntersightCapabilitySwitchCapability {
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
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Section},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarPid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Sku},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Vid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${DefaultFcoeVlan},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DynamicVifsSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${FanModulesSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FcEndHostModeReservedVsans},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${FcUplinkPortsAutoNegotiationSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${LocatorBeaconSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxActiveSpanSessions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxEthernetPortChannelMembers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxEthernetPortChannels},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxEthernetUplinkPorts},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxFcFcoePortChannels},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxFcPortChannelMembers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxFcoePortChannelMembers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxPorts},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxSlots},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxVsansSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinActiveFans},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortsSupporting100gSpeed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortsSupporting10gSpeed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortsSupporting1gSpeed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortsSupporting25gSpeed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortsSupporting40gSpeed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortsSupportingBreakout},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortsSupportingFcoe},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortsSupportingServerRole},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ReservedVsans},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SerenoNetflowSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${UnifiedPorts},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UnifiedRule},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${VpCompressionSupported}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightCapabilitySwitchCapability' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Name" = ${Name}
            "Section" = ${Section}
            "Pid" = ${VarPid}
            "Sku" = ${Sku}
            "Vid" = ${Vid}
            "DefaultFcoeVlan" = ${DefaultFcoeVlan}
            "DynamicVifsSupported" = ${DynamicVifsSupported}
            "FanModulesSupported" = ${FanModulesSupported}
            "FcEndHostModeReservedVsans" = ${FcEndHostModeReservedVsans}
            "FcUplinkPortsAutoNegotiationSupported" = ${FcUplinkPortsAutoNegotiationSupported}
            "LocatorBeaconSupported" = ${LocatorBeaconSupported}
            "MaxActiveSpanSessions" = ${MaxActiveSpanSessions}
            "MaxEthernetPortChannelMembers" = ${MaxEthernetPortChannelMembers}
            "MaxEthernetPortChannels" = ${MaxEthernetPortChannels}
            "MaxEthernetUplinkPorts" = ${MaxEthernetUplinkPorts}
            "MaxFcFcoePortChannels" = ${MaxFcFcoePortChannels}
            "MaxFcPortChannelMembers" = ${MaxFcPortChannelMembers}
            "MaxFcoePortChannelMembers" = ${MaxFcoePortChannelMembers}
            "MaxPorts" = ${MaxPorts}
            "MaxSlots" = ${MaxSlots}
            "MaxVsansSupported" = ${MaxVsansSupported}
            "MinActiveFans" = ${MinActiveFans}
            "PortsSupporting100gSpeed" = ${PortsSupporting100gSpeed}
            "PortsSupporting10gSpeed" = ${PortsSupporting10gSpeed}
            "PortsSupporting1gSpeed" = ${PortsSupporting1gSpeed}
            "PortsSupporting25gSpeed" = ${PortsSupporting25gSpeed}
            "PortsSupporting40gSpeed" = ${PortsSupporting40gSpeed}
            "PortsSupportingBreakout" = ${PortsSupportingBreakout}
            "PortsSupportingFcoe" = ${PortsSupportingFcoe}
            "PortsSupportingServerRole" = ${PortsSupportingServerRole}
            "ReservedVsans" = ${ReservedVsans}
            "SerenoNetflowSupported" = ${SerenoNetflowSupported}
            "UnifiedPorts" = ${UnifiedPorts}
            "UnifiedRule" = ${UnifiedRule}
            "VpCompressionSupported" = ${VpCompressionSupported}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CapabilitySwitchCapability<PSCustomObject>

.DESCRIPTION

Convert from JSON to CapabilitySwitchCapability<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CapabilitySwitchCapability<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToCapabilitySwitchCapability {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightCapabilitySwitchCapability' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightCapabilitySwitchCapability
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Name", "Section", "Pid", "Sku", "Vid", "DefaultFcoeVlan", "DynamicVifsSupported", "FanModulesSupported", "FcEndHostModeReservedVsans", "FcUplinkPortsAutoNegotiationSupported", "LocatorBeaconSupported", "MaxActiveSpanSessions", "MaxEthernetPortChannelMembers", "MaxEthernetPortChannels", "MaxEthernetUplinkPorts", "MaxFcFcoePortChannels", "MaxFcPortChannelMembers", "MaxFcoePortChannelMembers", "MaxPorts", "MaxSlots", "MaxVsansSupported", "MinActiveFans", "PortsSupporting100gSpeed", "PortsSupporting10gSpeed", "PortsSupporting1gSpeed", "PortsSupporting25gSpeed", "PortsSupporting40gSpeed", "PortsSupportingBreakout", "PortsSupportingFcoe", "PortsSupportingServerRole", "ReservedVsans", "SerenoNetflowSupported", "UnifiedPorts", "UnifiedRule", "VpCompressionSupported")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Section"))) { #optional property not found
            $Section = $null
        } else {
            $Section = $JsonParameters.PSobject.Properties["Section"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Pid"))) { #optional property not found
            $VarPid = $null
        } else {
            $VarPid = $JsonParameters.PSobject.Properties["Pid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Sku"))) { #optional property not found
            $Sku = $null
        } else {
            $Sku = $JsonParameters.PSobject.Properties["Sku"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vid"))) { #optional property not found
            $Vid = $null
        } else {
            $Vid = $JsonParameters.PSobject.Properties["Vid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DefaultFcoeVlan"))) { #optional property not found
            $DefaultFcoeVlan = $null
        } else {
            $DefaultFcoeVlan = $JsonParameters.PSobject.Properties["DefaultFcoeVlan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DynamicVifsSupported"))) { #optional property not found
            $DynamicVifsSupported = $null
        } else {
            $DynamicVifsSupported = $JsonParameters.PSobject.Properties["DynamicVifsSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FanModulesSupported"))) { #optional property not found
            $FanModulesSupported = $null
        } else {
            $FanModulesSupported = $JsonParameters.PSobject.Properties["FanModulesSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FcEndHostModeReservedVsans"))) { #optional property not found
            $FcEndHostModeReservedVsans = $null
        } else {
            $FcEndHostModeReservedVsans = $JsonParameters.PSobject.Properties["FcEndHostModeReservedVsans"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FcUplinkPortsAutoNegotiationSupported"))) { #optional property not found
            $FcUplinkPortsAutoNegotiationSupported = $null
        } else {
            $FcUplinkPortsAutoNegotiationSupported = $JsonParameters.PSobject.Properties["FcUplinkPortsAutoNegotiationSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LocatorBeaconSupported"))) { #optional property not found
            $LocatorBeaconSupported = $null
        } else {
            $LocatorBeaconSupported = $JsonParameters.PSobject.Properties["LocatorBeaconSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxActiveSpanSessions"))) { #optional property not found
            $MaxActiveSpanSessions = $null
        } else {
            $MaxActiveSpanSessions = $JsonParameters.PSobject.Properties["MaxActiveSpanSessions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxEthernetPortChannelMembers"))) { #optional property not found
            $MaxEthernetPortChannelMembers = $null
        } else {
            $MaxEthernetPortChannelMembers = $JsonParameters.PSobject.Properties["MaxEthernetPortChannelMembers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxEthernetPortChannels"))) { #optional property not found
            $MaxEthernetPortChannels = $null
        } else {
            $MaxEthernetPortChannels = $JsonParameters.PSobject.Properties["MaxEthernetPortChannels"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxEthernetUplinkPorts"))) { #optional property not found
            $MaxEthernetUplinkPorts = $null
        } else {
            $MaxEthernetUplinkPorts = $JsonParameters.PSobject.Properties["MaxEthernetUplinkPorts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxFcFcoePortChannels"))) { #optional property not found
            $MaxFcFcoePortChannels = $null
        } else {
            $MaxFcFcoePortChannels = $JsonParameters.PSobject.Properties["MaxFcFcoePortChannels"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxFcPortChannelMembers"))) { #optional property not found
            $MaxFcPortChannelMembers = $null
        } else {
            $MaxFcPortChannelMembers = $JsonParameters.PSobject.Properties["MaxFcPortChannelMembers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxFcoePortChannelMembers"))) { #optional property not found
            $MaxFcoePortChannelMembers = $null
        } else {
            $MaxFcoePortChannelMembers = $JsonParameters.PSobject.Properties["MaxFcoePortChannelMembers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxPorts"))) { #optional property not found
            $MaxPorts = $null
        } else {
            $MaxPorts = $JsonParameters.PSobject.Properties["MaxPorts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxSlots"))) { #optional property not found
            $MaxSlots = $null
        } else {
            $MaxSlots = $JsonParameters.PSobject.Properties["MaxSlots"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxVsansSupported"))) { #optional property not found
            $MaxVsansSupported = $null
        } else {
            $MaxVsansSupported = $JsonParameters.PSobject.Properties["MaxVsansSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MinActiveFans"))) { #optional property not found
            $MinActiveFans = $null
        } else {
            $MinActiveFans = $JsonParameters.PSobject.Properties["MinActiveFans"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortsSupporting100gSpeed"))) { #optional property not found
            $PortsSupporting100gSpeed = $null
        } else {
            $PortsSupporting100gSpeed = $JsonParameters.PSobject.Properties["PortsSupporting100gSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortsSupporting10gSpeed"))) { #optional property not found
            $PortsSupporting10gSpeed = $null
        } else {
            $PortsSupporting10gSpeed = $JsonParameters.PSobject.Properties["PortsSupporting10gSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortsSupporting1gSpeed"))) { #optional property not found
            $PortsSupporting1gSpeed = $null
        } else {
            $PortsSupporting1gSpeed = $JsonParameters.PSobject.Properties["PortsSupporting1gSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortsSupporting25gSpeed"))) { #optional property not found
            $PortsSupporting25gSpeed = $null
        } else {
            $PortsSupporting25gSpeed = $JsonParameters.PSobject.Properties["PortsSupporting25gSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortsSupporting40gSpeed"))) { #optional property not found
            $PortsSupporting40gSpeed = $null
        } else {
            $PortsSupporting40gSpeed = $JsonParameters.PSobject.Properties["PortsSupporting40gSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortsSupportingBreakout"))) { #optional property not found
            $PortsSupportingBreakout = $null
        } else {
            $PortsSupportingBreakout = $JsonParameters.PSobject.Properties["PortsSupportingBreakout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortsSupportingFcoe"))) { #optional property not found
            $PortsSupportingFcoe = $null
        } else {
            $PortsSupportingFcoe = $JsonParameters.PSobject.Properties["PortsSupportingFcoe"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortsSupportingServerRole"))) { #optional property not found
            $PortsSupportingServerRole = $null
        } else {
            $PortsSupportingServerRole = $JsonParameters.PSobject.Properties["PortsSupportingServerRole"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReservedVsans"))) { #optional property not found
            $ReservedVsans = $null
        } else {
            $ReservedVsans = $JsonParameters.PSobject.Properties["ReservedVsans"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SerenoNetflowSupported"))) { #optional property not found
            $SerenoNetflowSupported = $null
        } else {
            $SerenoNetflowSupported = $JsonParameters.PSobject.Properties["SerenoNetflowSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UnifiedPorts"))) { #optional property not found
            $UnifiedPorts = $null
        } else {
            $UnifiedPorts = $JsonParameters.PSobject.Properties["UnifiedPorts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UnifiedRule"))) { #optional property not found
            $UnifiedRule = $null
        } else {
            $UnifiedRule = $JsonParameters.PSobject.Properties["UnifiedRule"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VpCompressionSupported"))) { #optional property not found
            $VpCompressionSupported = $null
        } else {
            $VpCompressionSupported = $JsonParameters.PSobject.Properties["VpCompressionSupported"].value
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
            "Name" = ${Name}
            "Section" = ${Section}
            "Pid" = ${VarPid}
            "Sku" = ${Sku}
            "Vid" = ${Vid}
            "DefaultFcoeVlan" = ${DefaultFcoeVlan}
            "DynamicVifsSupported" = ${DynamicVifsSupported}
            "FanModulesSupported" = ${FanModulesSupported}
            "FcEndHostModeReservedVsans" = ${FcEndHostModeReservedVsans}
            "FcUplinkPortsAutoNegotiationSupported" = ${FcUplinkPortsAutoNegotiationSupported}
            "LocatorBeaconSupported" = ${LocatorBeaconSupported}
            "MaxActiveSpanSessions" = ${MaxActiveSpanSessions}
            "MaxEthernetPortChannelMembers" = ${MaxEthernetPortChannelMembers}
            "MaxEthernetPortChannels" = ${MaxEthernetPortChannels}
            "MaxEthernetUplinkPorts" = ${MaxEthernetUplinkPorts}
            "MaxFcFcoePortChannels" = ${MaxFcFcoePortChannels}
            "MaxFcPortChannelMembers" = ${MaxFcPortChannelMembers}
            "MaxFcoePortChannelMembers" = ${MaxFcoePortChannelMembers}
            "MaxPorts" = ${MaxPorts}
            "MaxSlots" = ${MaxSlots}
            "MaxVsansSupported" = ${MaxVsansSupported}
            "MinActiveFans" = ${MinActiveFans}
            "PortsSupporting100gSpeed" = ${PortsSupporting100gSpeed}
            "PortsSupporting10gSpeed" = ${PortsSupporting10gSpeed}
            "PortsSupporting1gSpeed" = ${PortsSupporting1gSpeed}
            "PortsSupporting25gSpeed" = ${PortsSupporting25gSpeed}
            "PortsSupporting40gSpeed" = ${PortsSupporting40gSpeed}
            "PortsSupportingBreakout" = ${PortsSupportingBreakout}
            "PortsSupportingFcoe" = ${PortsSupportingFcoe}
            "PortsSupportingServerRole" = ${PortsSupportingServerRole}
            "ReservedVsans" = ${ReservedVsans}
            "SerenoNetflowSupported" = ${SerenoNetflowSupported}
            "UnifiedPorts" = ${UnifiedPorts}
            "UnifiedRule" = ${UnifiedRule}
            "VpCompressionSupported" = ${VpCompressionSupported}
        }

        return $PSO
    }

}

