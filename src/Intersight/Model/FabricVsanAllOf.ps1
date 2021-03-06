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

Definition of the list of properties defined in 'fabric.Vsan', excluding properties defined in parent classes.

.PARAMETER DefaultZoning
Enables or Disables the default zoning state.
.PARAMETER FcZoneSharingMode
Logical grouping mode for fc ports.
.PARAMETER FcoeVlan
FCOE Vlan associated to the VSAN configuration.
.PARAMETER Name
User given name for the VSAN configuration.
.PARAMETER VsanId
Virtual San Identifier in the switch.
.PARAMETER FcNetworkPolicy
No description available.
.OUTPUTS

FabricVsanAllOf<PSCustomObject>
#>

function Initialize-IntersightFabricVsanAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Enabled", "Disabled")]
        [String]
        ${DefaultZoning} = "Enabled",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FcZoneSharingMode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FcoeVlan},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VsanId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FcNetworkPolicy}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFabricVsanAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$VsanId -and $VsanId -gt 4093) {
          throw "invalid value for 'VsanId', must be smaller than or equal to 4093."
        }

        if (!$VsanId -and $VsanId -lt 1) {
          throw "invalid value for 'VsanId', must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "DefaultZoning" = ${DefaultZoning}
            "FcZoneSharingMode" = ${FcZoneSharingMode}
            "FcoeVlan" = ${FcoeVlan}
            "Name" = ${Name}
            "VsanId" = ${VsanId}
            "FcNetworkPolicy" = ${FcNetworkPolicy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FabricVsanAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FabricVsanAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FabricVsanAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFabricVsanAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFabricVsanAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFabricVsanAllOf
        $AllProperties = ("DefaultZoning", "FcZoneSharingMode", "FcoeVlan", "Name", "VsanId", "FcNetworkPolicy")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DefaultZoning"))) { #optional property not found
            $DefaultZoning = $null
        } else {
            $DefaultZoning = $JsonParameters.PSobject.Properties["DefaultZoning"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FcZoneSharingMode"))) { #optional property not found
            $FcZoneSharingMode = $null
        } else {
            $FcZoneSharingMode = $JsonParameters.PSobject.Properties["FcZoneSharingMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FcoeVlan"))) { #optional property not found
            $FcoeVlan = $null
        } else {
            $FcoeVlan = $JsonParameters.PSobject.Properties["FcoeVlan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VsanId"))) { #optional property not found
            $VsanId = $null
        } else {
            $VsanId = $JsonParameters.PSobject.Properties["VsanId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FcNetworkPolicy"))) { #optional property not found
            $FcNetworkPolicy = $null
        } else {
            $FcNetworkPolicy = $JsonParameters.PSobject.Properties["FcNetworkPolicy"].value
        }

        $PSO = [PSCustomObject]@{
            "DefaultZoning" = ${DefaultZoning}
            "FcZoneSharingMode" = ${FcZoneSharingMode}
            "FcoeVlan" = ${FcoeVlan}
            "Name" = ${Name}
            "VsanId" = ${VsanId}
            "FcNetworkPolicy" = ${FcNetworkPolicy}
        }

        return $PSO
    }

}

