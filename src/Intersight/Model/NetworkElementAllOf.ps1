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

Definition of the list of properties defined in 'network.Element', excluding properties defined in parent classes.

.PARAMETER FaultSummary
The fault summary of the network Element out-of-band management interface.
.PARAMETER OutOfBandIpv6Address
The IPv6 address of the network Element out-of-band management interface.
.PARAMETER OutOfBandIpv6Gateway
The default IPv6 gateway of the network Element out-of-band management interface.
.PARAMETER OutOfBandIpv6Prefix
The network mask of the network Element out-of-band management interface.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER ManagementContoller
No description available.
.PARAMETER ManagementEntity
No description available.
.PARAMETER NetworkFcZoneInfo
No description available.
.PARAMETER NetworkVlanPortInfo
No description available.
.PARAMETER PortMacBindings
An array of relationships to portMacBinding resources.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER TopSystem
No description available.
.PARAMETER UcsmRunningFirmware
No description available.
.OUTPUTS

NetworkElementAllOf<PSCustomObject>
#>

function Initialize-IntersightNetworkElementAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FaultSummary},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OutOfBandIpv6Address},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OutOfBandIpv6Gateway},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OutOfBandIpv6Prefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ManagementContoller},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ManagementEntity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NetworkFcZoneInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NetworkVlanPortInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortMacBindings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TopSystem},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UcsmRunningFirmware}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightNetworkElementAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "FaultSummary" = ${FaultSummary}
            "OutOfBandIpv6Address" = ${OutOfBandIpv6Address}
            "OutOfBandIpv6Gateway" = ${OutOfBandIpv6Gateway}
            "OutOfBandIpv6Prefix" = ${OutOfBandIpv6Prefix}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "ManagementContoller" = ${ManagementContoller}
            "ManagementEntity" = ${ManagementEntity}
            "NetworkFcZoneInfo" = ${NetworkFcZoneInfo}
            "NetworkVlanPortInfo" = ${NetworkVlanPortInfo}
            "PortMacBindings" = ${PortMacBindings}
            "RegisteredDevice" = ${RegisteredDevice}
            "TopSystem" = ${TopSystem}
            "UcsmRunningFirmware" = ${UcsmRunningFirmware}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NetworkElementAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to NetworkElementAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NetworkElementAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToNetworkElementAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightNetworkElementAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightNetworkElementAllOf
        $AllProperties = ("AdminEvacState", "AdminInbandInterfaceState", "AvailableMemory", "EthernetMode", "FaultSummary", "FcMode", "InbandIpAddress", "InbandIpGateway", "InbandIpMask", "InbandVlan", "OperEvacState", "Operability", "OutOfBandIpAddress", "OutOfBandIpGateway", "OutOfBandIpMask", "OutOfBandIpv4Address", "OutOfBandIpv4Gateway", "OutOfBandIpv4Mask", "OutOfBandIpv6Address", "OutOfBandIpv6Gateway", "OutOfBandIpv6Prefix", "OutOfBandMac", "SwitchId", "TotalMemory", "Cards", "Fanmodules", "InventoryDeviceInfo", "ManagementContoller", "ManagementEntity", "NetworkFcZoneInfo", "NetworkVlanPortInfo", "PortMacBindings", "Psus", "RegisteredDevice", "StorageItems", "TopSystem", "UcsmRunningFirmware")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminEvacState"))) { #optional property not found
            $AdminEvacState = $null
        } else {
            $AdminEvacState = $JsonParameters.PSobject.Properties["AdminEvacState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminInbandInterfaceState"))) { #optional property not found
            $AdminInbandInterfaceState = $null
        } else {
            $AdminInbandInterfaceState = $JsonParameters.PSobject.Properties["AdminInbandInterfaceState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AvailableMemory"))) { #optional property not found
            $AvailableMemory = $null
        } else {
            $AvailableMemory = $JsonParameters.PSobject.Properties["AvailableMemory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EthernetMode"))) { #optional property not found
            $EthernetMode = $null
        } else {
            $EthernetMode = $JsonParameters.PSobject.Properties["EthernetMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FaultSummary"))) { #optional property not found
            $FaultSummary = $null
        } else {
            $FaultSummary = $JsonParameters.PSobject.Properties["FaultSummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FcMode"))) { #optional property not found
            $FcMode = $null
        } else {
            $FcMode = $JsonParameters.PSobject.Properties["FcMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandIpAddress"))) { #optional property not found
            $InbandIpAddress = $null
        } else {
            $InbandIpAddress = $JsonParameters.PSobject.Properties["InbandIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandIpGateway"))) { #optional property not found
            $InbandIpGateway = $null
        } else {
            $InbandIpGateway = $JsonParameters.PSobject.Properties["InbandIpGateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandIpMask"))) { #optional property not found
            $InbandIpMask = $null
        } else {
            $InbandIpMask = $JsonParameters.PSobject.Properties["InbandIpMask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandVlan"))) { #optional property not found
            $InbandVlan = $null
        } else {
            $InbandVlan = $JsonParameters.PSobject.Properties["InbandVlan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperEvacState"))) { #optional property not found
            $OperEvacState = $null
        } else {
            $OperEvacState = $JsonParameters.PSobject.Properties["OperEvacState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Operability"))) { #optional property not found
            $Operability = $null
        } else {
            $Operability = $JsonParameters.PSobject.Properties["Operability"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpAddress"))) { #optional property not found
            $OutOfBandIpAddress = $null
        } else {
            $OutOfBandIpAddress = $JsonParameters.PSobject.Properties["OutOfBandIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpGateway"))) { #optional property not found
            $OutOfBandIpGateway = $null
        } else {
            $OutOfBandIpGateway = $JsonParameters.PSobject.Properties["OutOfBandIpGateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpMask"))) { #optional property not found
            $OutOfBandIpMask = $null
        } else {
            $OutOfBandIpMask = $JsonParameters.PSobject.Properties["OutOfBandIpMask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv4Address"))) { #optional property not found
            $OutOfBandIpv4Address = $null
        } else {
            $OutOfBandIpv4Address = $JsonParameters.PSobject.Properties["OutOfBandIpv4Address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv4Gateway"))) { #optional property not found
            $OutOfBandIpv4Gateway = $null
        } else {
            $OutOfBandIpv4Gateway = $JsonParameters.PSobject.Properties["OutOfBandIpv4Gateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv4Mask"))) { #optional property not found
            $OutOfBandIpv4Mask = $null
        } else {
            $OutOfBandIpv4Mask = $JsonParameters.PSobject.Properties["OutOfBandIpv4Mask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv6Address"))) { #optional property not found
            $OutOfBandIpv6Address = $null
        } else {
            $OutOfBandIpv6Address = $JsonParameters.PSobject.Properties["OutOfBandIpv6Address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv6Gateway"))) { #optional property not found
            $OutOfBandIpv6Gateway = $null
        } else {
            $OutOfBandIpv6Gateway = $JsonParameters.PSobject.Properties["OutOfBandIpv6Gateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv6Prefix"))) { #optional property not found
            $OutOfBandIpv6Prefix = $null
        } else {
            $OutOfBandIpv6Prefix = $JsonParameters.PSobject.Properties["OutOfBandIpv6Prefix"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandMac"))) { #optional property not found
            $OutOfBandMac = $null
        } else {
            $OutOfBandMac = $JsonParameters.PSobject.Properties["OutOfBandMac"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SwitchId"))) { #optional property not found
            $SwitchId = $null
        } else {
            $SwitchId = $JsonParameters.PSobject.Properties["SwitchId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TotalMemory"))) { #optional property not found
            $TotalMemory = $null
        } else {
            $TotalMemory = $JsonParameters.PSobject.Properties["TotalMemory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Cards"))) { #optional property not found
            $Cards = $null
        } else {
            $Cards = $JsonParameters.PSobject.Properties["Cards"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Fanmodules"))) { #optional property not found
            $Fanmodules = $null
        } else {
            $Fanmodules = $JsonParameters.PSobject.Properties["Fanmodules"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ManagementContoller"))) { #optional property not found
            $ManagementContoller = $null
        } else {
            $ManagementContoller = $JsonParameters.PSobject.Properties["ManagementContoller"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ManagementEntity"))) { #optional property not found
            $ManagementEntity = $null
        } else {
            $ManagementEntity = $JsonParameters.PSobject.Properties["ManagementEntity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkFcZoneInfo"))) { #optional property not found
            $NetworkFcZoneInfo = $null
        } else {
            $NetworkFcZoneInfo = $JsonParameters.PSobject.Properties["NetworkFcZoneInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkVlanPortInfo"))) { #optional property not found
            $NetworkVlanPortInfo = $null
        } else {
            $NetworkVlanPortInfo = $JsonParameters.PSobject.Properties["NetworkVlanPortInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortMacBindings"))) { #optional property not found
            $PortMacBindings = $null
        } else {
            $PortMacBindings = $JsonParameters.PSobject.Properties["PortMacBindings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Psus"))) { #optional property not found
            $Psus = $null
        } else {
            $Psus = $JsonParameters.PSobject.Properties["Psus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageItems"))) { #optional property not found
            $StorageItems = $null
        } else {
            $StorageItems = $JsonParameters.PSobject.Properties["StorageItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TopSystem"))) { #optional property not found
            $TopSystem = $null
        } else {
            $TopSystem = $JsonParameters.PSobject.Properties["TopSystem"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UcsmRunningFirmware"))) { #optional property not found
            $UcsmRunningFirmware = $null
        } else {
            $UcsmRunningFirmware = $JsonParameters.PSobject.Properties["UcsmRunningFirmware"].value
        }

        $PSO = [PSCustomObject]@{
            "AdminEvacState" = ${AdminEvacState}
            "AdminInbandInterfaceState" = ${AdminInbandInterfaceState}
            "AvailableMemory" = ${AvailableMemory}
            "EthernetMode" = ${EthernetMode}
            "FaultSummary" = ${FaultSummary}
            "FcMode" = ${FcMode}
            "InbandIpAddress" = ${InbandIpAddress}
            "InbandIpGateway" = ${InbandIpGateway}
            "InbandIpMask" = ${InbandIpMask}
            "InbandVlan" = ${InbandVlan}
            "OperEvacState" = ${OperEvacState}
            "Operability" = ${Operability}
            "OutOfBandIpAddress" = ${OutOfBandIpAddress}
            "OutOfBandIpGateway" = ${OutOfBandIpGateway}
            "OutOfBandIpMask" = ${OutOfBandIpMask}
            "OutOfBandIpv4Address" = ${OutOfBandIpv4Address}
            "OutOfBandIpv4Gateway" = ${OutOfBandIpv4Gateway}
            "OutOfBandIpv4Mask" = ${OutOfBandIpv4Mask}
            "OutOfBandIpv6Address" = ${OutOfBandIpv6Address}
            "OutOfBandIpv6Gateway" = ${OutOfBandIpv6Gateway}
            "OutOfBandIpv6Prefix" = ${OutOfBandIpv6Prefix}
            "OutOfBandMac" = ${OutOfBandMac}
            "SwitchId" = ${SwitchId}
            "TotalMemory" = ${TotalMemory}
            "Cards" = ${Cards}
            "Fanmodules" = ${Fanmodules}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "ManagementContoller" = ${ManagementContoller}
            "ManagementEntity" = ${ManagementEntity}
            "NetworkFcZoneInfo" = ${NetworkFcZoneInfo}
            "NetworkVlanPortInfo" = ${NetworkVlanPortInfo}
            "PortMacBindings" = ${PortMacBindings}
            "Psus" = ${Psus}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageItems" = ${StorageItems}
            "TopSystem" = ${TopSystem}
            "UcsmRunningFirmware" = ${UcsmRunningFirmware}
        }

        return $PSO
    }

}
