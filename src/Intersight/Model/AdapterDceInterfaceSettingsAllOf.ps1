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

Definition of the list of properties defined in 'adapter.DceInterfaceSettings', excluding properties defined in parent classes.

.PARAMETER FecMode
Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.
.PARAMETER InterfaceId
DCE interface id on which settings needs to be configured. Supported values are (0-3).
.OUTPUTS

AdapterDceInterfaceSettingsAllOf<PSCustomObject>
#>

function Initialize-IntersightAdapterDceInterfaceSettingsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Auto", "cl91", "cl74", "false")]
        [String]
        ${FecMode} = "Auto",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${InterfaceId}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAdapterDceInterfaceSettingsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$InterfaceId -and $InterfaceId -gt 3) {
          throw "invalid value for 'InterfaceId', must be smaller than or equal to 3."
        }

        if (!$InterfaceId -and $InterfaceId -lt 0) {
          throw "invalid value for 'InterfaceId', must be greater than or equal to 0."
        }

        
        $PSO = [PSCustomObject]@{
            "FecMode" = ${FecMode}
            "InterfaceId" = ${InterfaceId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AdapterDceInterfaceSettingsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AdapterDceInterfaceSettingsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AdapterDceInterfaceSettingsAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAdapterDceInterfaceSettingsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAdapterDceInterfaceSettingsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAdapterDceInterfaceSettingsAllOf
        $AllProperties = ("FecMode", "InterfaceId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FecMode"))) { #optional property not found
            $FecMode = $null
        } else {
            $FecMode = $JsonParameters.PSobject.Properties["FecMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InterfaceId"))) { #optional property not found
            $InterfaceId = $null
        } else {
            $InterfaceId = $JsonParameters.PSobject.Properties["InterfaceId"].value
        }

        $PSO = [PSCustomObject]@{
            "FecMode" = ${FecMode}
            "InterfaceId" = ${InterfaceId}
        }

        return $PSO
    }

}

