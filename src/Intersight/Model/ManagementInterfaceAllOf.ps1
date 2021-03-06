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

Definition of the list of properties defined in 'management.Interface', excluding properties defined in parent classes.

.PARAMETER HostName
Hostname configured for the interface.
.PARAMETER Ipv6Address
IPv6 address of the interface.
.PARAMETER Ipv6Gateway
IPv6 default gateway for the interface.
.PARAMETER Ipv6Prefix
IPv6 prefix for the interface.
.PARAMETER SwitchId
Switch Id connected to the interface.
.PARAMETER UemConnStatus
The event channel connection status for the interface.
.PARAMETER VirtualHostName
Virtual hostname configured for the interface in case of clustered environment.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER ManagementController
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

ManagementInterfaceAllOf<PSCustomObject>
#>

function Initialize-IntersightManagementInterfaceAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HostName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ipv6Address},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ipv6Gateway},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Ipv6Prefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SwitchId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UemConnStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VirtualHostName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ManagementController},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightManagementInterfaceAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "HostName" = ${HostName}
            "Ipv6Address" = ${Ipv6Address}
            "Ipv6Gateway" = ${Ipv6Gateway}
            "Ipv6Prefix" = ${Ipv6Prefix}
            "SwitchId" = ${SwitchId}
            "UemConnStatus" = ${UemConnStatus}
            "VirtualHostName" = ${VirtualHostName}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "ManagementController" = ${ManagementController}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ManagementInterfaceAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ManagementInterfaceAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ManagementInterfaceAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToManagementInterfaceAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightManagementInterfaceAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightManagementInterfaceAllOf
        $AllProperties = ("Gateway", "HostName", "IpAddress", "Ipv4Address", "Ipv4Gateway", "Ipv4Mask", "Ipv6Address", "Ipv6Gateway", "Ipv6Prefix", "MacAddress", "Mask", "SwitchId", "UemConnStatus", "VirtualHostName", "InventoryDeviceInfo", "ManagementController", "RegisteredDevice")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Gateway"))) { #optional property not found
            $Gateway = $null
        } else {
            $Gateway = $JsonParameters.PSobject.Properties["Gateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HostName"))) { #optional property not found
            $HostName = $null
        } else {
            $HostName = $JsonParameters.PSobject.Properties["HostName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IpAddress"))) { #optional property not found
            $IpAddress = $null
        } else {
            $IpAddress = $JsonParameters.PSobject.Properties["IpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ipv4Address"))) { #optional property not found
            $Ipv4Address = $null
        } else {
            $Ipv4Address = $JsonParameters.PSobject.Properties["Ipv4Address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ipv4Gateway"))) { #optional property not found
            $Ipv4Gateway = $null
        } else {
            $Ipv4Gateway = $JsonParameters.PSobject.Properties["Ipv4Gateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ipv4Mask"))) { #optional property not found
            $Ipv4Mask = $null
        } else {
            $Ipv4Mask = $JsonParameters.PSobject.Properties["Ipv4Mask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ipv6Address"))) { #optional property not found
            $Ipv6Address = $null
        } else {
            $Ipv6Address = $JsonParameters.PSobject.Properties["Ipv6Address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ipv6Gateway"))) { #optional property not found
            $Ipv6Gateway = $null
        } else {
            $Ipv6Gateway = $JsonParameters.PSobject.Properties["Ipv6Gateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ipv6Prefix"))) { #optional property not found
            $Ipv6Prefix = $null
        } else {
            $Ipv6Prefix = $JsonParameters.PSobject.Properties["Ipv6Prefix"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MacAddress"))) { #optional property not found
            $MacAddress = $null
        } else {
            $MacAddress = $JsonParameters.PSobject.Properties["MacAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Mask"))) { #optional property not found
            $Mask = $null
        } else {
            $Mask = $JsonParameters.PSobject.Properties["Mask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SwitchId"))) { #optional property not found
            $SwitchId = $null
        } else {
            $SwitchId = $JsonParameters.PSobject.Properties["SwitchId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UemConnStatus"))) { #optional property not found
            $UemConnStatus = $null
        } else {
            $UemConnStatus = $JsonParameters.PSobject.Properties["UemConnStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualHostName"))) { #optional property not found
            $VirtualHostName = $null
        } else {
            $VirtualHostName = $JsonParameters.PSobject.Properties["VirtualHostName"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        $PSO = [PSCustomObject]@{
            "Gateway" = ${Gateway}
            "HostName" = ${HostName}
            "IpAddress" = ${IpAddress}
            "Ipv4Address" = ${Ipv4Address}
            "Ipv4Gateway" = ${Ipv4Gateway}
            "Ipv4Mask" = ${Ipv4Mask}
            "Ipv6Address" = ${Ipv6Address}
            "Ipv6Gateway" = ${Ipv6Gateway}
            "Ipv6Prefix" = ${Ipv6Prefix}
            "MacAddress" = ${MacAddress}
            "Mask" = ${Mask}
            "SwitchId" = ${SwitchId}
            "UemConnStatus" = ${UemConnStatus}
            "VirtualHostName" = ${VirtualHostName}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "ManagementController" = ${ManagementController}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

