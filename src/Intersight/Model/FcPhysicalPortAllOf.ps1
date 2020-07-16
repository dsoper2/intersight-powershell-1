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

Definition of the list of properties defined in 'fc.PhysicalPort', excluding properties defined in parent classes.

.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER PortGroup
No description available.
.PARAMETER PortSubGroup
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

FcPhysicalPortAllOf<PSCustomObject>
#>

function Initialize-IntersightFcPhysicalPortAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PortGroup},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PortSubGroup},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFcPhysicalPortAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PortGroup" = ${PortGroup}
            "PortSubGroup" = ${PortSubGroup}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FcPhysicalPortAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FcPhysicalPortAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FcPhysicalPortAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFcPhysicalPortAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFcPhysicalPortAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFcPhysicalPortAllOf
        $AllProperties = ("AdminSpeed", "AdminState", "B2bCredit", "MaxSpeed", "Mode", "OperSpeed", "PeerDn", "PortChannelId", "TransceiverType", "Vsan", "Wwn", "InventoryDeviceInfo", "PortGroup", "PortSubGroup", "RegisteredDevice")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminSpeed"))) { #optional property not found
            $AdminSpeed = $null
        } else {
            $AdminSpeed = $JsonParameters.PSobject.Properties["AdminSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminState"))) { #optional property not found
            $AdminState = $null
        } else {
            $AdminState = $JsonParameters.PSobject.Properties["AdminState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "B2bCredit"))) { #optional property not found
            $B2bCredit = $null
        } else {
            $B2bCredit = $JsonParameters.PSobject.Properties["B2bCredit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxSpeed"))) { #optional property not found
            $MaxSpeed = $null
        } else {
            $MaxSpeed = $JsonParameters.PSobject.Properties["MaxSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Mode"))) { #optional property not found
            $Mode = $null
        } else {
            $Mode = $JsonParameters.PSobject.Properties["Mode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperSpeed"))) { #optional property not found
            $OperSpeed = $null
        } else {
            $OperSpeed = $JsonParameters.PSobject.Properties["OperSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PeerDn"))) { #optional property not found
            $PeerDn = $null
        } else {
            $PeerDn = $JsonParameters.PSobject.Properties["PeerDn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortChannelId"))) { #optional property not found
            $PortChannelId = $null
        } else {
            $PortChannelId = $JsonParameters.PSobject.Properties["PortChannelId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TransceiverType"))) { #optional property not found
            $TransceiverType = $null
        } else {
            $TransceiverType = $JsonParameters.PSobject.Properties["TransceiverType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vsan"))) { #optional property not found
            $Vsan = $null
        } else {
            $Vsan = $JsonParameters.PSobject.Properties["Vsan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Wwn"))) { #optional property not found
            $Wwn = $null
        } else {
            $Wwn = $JsonParameters.PSobject.Properties["Wwn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortGroup"))) { #optional property not found
            $PortGroup = $null
        } else {
            $PortGroup = $JsonParameters.PSobject.Properties["PortGroup"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortSubGroup"))) { #optional property not found
            $PortSubGroup = $null
        } else {
            $PortSubGroup = $JsonParameters.PSobject.Properties["PortSubGroup"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        $PSO = [PSCustomObject]@{
            "AdminSpeed" = ${AdminSpeed}
            "AdminState" = ${AdminState}
            "B2bCredit" = ${B2bCredit}
            "MaxSpeed" = ${MaxSpeed}
            "Mode" = ${Mode}
            "OperSpeed" = ${OperSpeed}
            "PeerDn" = ${PeerDn}
            "PortChannelId" = ${PortChannelId}
            "TransceiverType" = ${TransceiverType}
            "Vsan" = ${Vsan}
            "Wwn" = ${Wwn}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PortGroup" = ${PortGroup}
            "PortSubGroup" = ${PortSubGroup}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}
