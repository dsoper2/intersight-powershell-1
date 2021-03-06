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

Information about the virtual machine's hardware platform (CPU, memory).

.PARAMETER ObjectType
The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types.
.PARAMETER CoresPerSocket
The number of core per CPU socket (value may be empty).
.PARAMETER NumCpus
Number of CPUs allocated to this VM.
.PARAMETER NumSockets
The number of CPU sockets allocated.
.OUTPUTS

VirtualizationVmwareVmCpuSocketInfo<PSCustomObject>
#>

function Initialize-IntersightVirtualizationVmwareVmCpuSocketInfo {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${CoresPerSocket},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NumCpus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NumSockets}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVirtualizationVmwareVmCpuSocketInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "ObjectType" = ${ObjectType}
            "CoresPerSocket" = ${CoresPerSocket}
            "NumCpus" = ${NumCpus}
            "NumSockets" = ${NumSockets}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VirtualizationVmwareVmCpuSocketInfo<PSCustomObject>

.DESCRIPTION

Convert from JSON to VirtualizationVmwareVmCpuSocketInfo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VirtualizationVmwareVmCpuSocketInfo<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVirtualizationVmwareVmCpuSocketInfo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVirtualizationVmwareVmCpuSocketInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVirtualizationVmwareVmCpuSocketInfo
        $AllProperties = ("ClassId", "ObjectType", "CoresPerSocket", "NumCpus", "NumSockets")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CoresPerSocket"))) { #optional property not found
            $CoresPerSocket = $null
        } else {
            $CoresPerSocket = $JsonParameters.PSobject.Properties["CoresPerSocket"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumCpus"))) { #optional property not found
            $NumCpus = $null
        } else {
            $NumCpus = $JsonParameters.PSobject.Properties["NumCpus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumSockets"))) { #optional property not found
            $NumSockets = $null
        } else {
            $NumSockets = $JsonParameters.PSobject.Properties["NumSockets"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "CoresPerSocket" = ${CoresPerSocket}
            "NumCpus" = ${NumCpus}
            "NumSockets" = ${NumSockets}
        }

        return $PSO
    }

}

