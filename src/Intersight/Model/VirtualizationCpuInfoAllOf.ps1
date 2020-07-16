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

Definition of the list of properties defined in 'virtualization.CpuInfo', excluding properties defined in parent classes.

.PARAMETER Cores
Number of cores per CPU, as reported by the manufacturer.
.PARAMETER Description
The vendor provided description of the CPU. For example, Intel Xeon E5-2640 v3 @ 2.60GHz.
.PARAMETER Sockets
Number of CPU sockets available.
.PARAMETER Speed
Speed of the CPUs in Hertz. For example, 2593749663.
.PARAMETER Vendor
Manufacturer of the CPU . For example, Intel.
.OUTPUTS

VirtualizationCpuInfoAllOf<PSCustomObject>
#>

function Initialize-IntersightVirtualizationCpuInfoAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Cores},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Sockets},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Speed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Vendor}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVirtualizationCpuInfoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Cores" = ${Cores}
            "Description" = ${Description}
            "Sockets" = ${Sockets}
            "Speed" = ${Speed}
            "Vendor" = ${Vendor}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VirtualizationCpuInfoAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to VirtualizationCpuInfoAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VirtualizationCpuInfoAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVirtualizationCpuInfoAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVirtualizationCpuInfoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVirtualizationCpuInfoAllOf
        $AllProperties = ("Cores", "Description", "Sockets", "Speed", "Vendor")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Cores"))) { #optional property not found
            $Cores = $null
        } else {
            $Cores = $JsonParameters.PSobject.Properties["Cores"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Sockets"))) { #optional property not found
            $Sockets = $null
        } else {
            $Sockets = $JsonParameters.PSobject.Properties["Sockets"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Speed"))) { #optional property not found
            $Speed = $null
        } else {
            $Speed = $JsonParameters.PSobject.Properties["Speed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vendor"))) { #optional property not found
            $Vendor = $null
        } else {
            $Vendor = $JsonParameters.PSobject.Properties["Vendor"].value
        }

        $PSO = [PSCustomObject]@{
            "Cores" = ${Cores}
            "Description" = ${Description}
            "Sockets" = ${Sockets}
            "Speed" = ${Speed}
            "Vendor" = ${Vendor}
        }

        return $PSO
    }

}
