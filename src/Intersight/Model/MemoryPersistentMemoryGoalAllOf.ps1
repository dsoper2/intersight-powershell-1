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

Definition of the list of properties defined in 'memory.PersistentMemoryGoal', excluding properties defined in parent classes.

.PARAMETER MemoryModePercentage
Volatile memory percentage.
.PARAMETER PersistentMemoryType
Type of the Persistent Memory configuration where the Persistent Memory Modules are combined in an interleaved set or not.
.PARAMETER SocketId
CPU Socket ID to which this goal will be applied.
.OUTPUTS

MemoryPersistentMemoryGoalAllOf<PSCustomObject>
#>

function Initialize-IntersightMemoryPersistentMemoryGoalAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MemoryModePercentage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("app-direct", "app-direct-non-interleaved")]
        [String]
        ${PersistentMemoryType} = "app-direct",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("All Sockets")]
        [String]
        ${SocketId} = "All Sockets"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightMemoryPersistentMemoryGoalAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$MemoryModePercentage -and $MemoryModePercentage -gt 100) {
          throw "invalid value for 'MemoryModePercentage', must be smaller than or equal to 100."
        }

        if (!$MemoryModePercentage -and $MemoryModePercentage -lt 0) {
          throw "invalid value for 'MemoryModePercentage', must be greater than or equal to 0."
        }

        
        $PSO = [PSCustomObject]@{
            "MemoryModePercentage" = ${MemoryModePercentage}
            "PersistentMemoryType" = ${PersistentMemoryType}
            "SocketId" = ${SocketId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MemoryPersistentMemoryGoalAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to MemoryPersistentMemoryGoalAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MemoryPersistentMemoryGoalAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToMemoryPersistentMemoryGoalAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightMemoryPersistentMemoryGoalAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightMemoryPersistentMemoryGoalAllOf
        $AllProperties = ("MemoryModePercentage", "PersistentMemoryType", "SocketId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MemoryModePercentage"))) { #optional property not found
            $MemoryModePercentage = $null
        } else {
            $MemoryModePercentage = $JsonParameters.PSobject.Properties["MemoryModePercentage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PersistentMemoryType"))) { #optional property not found
            $PersistentMemoryType = $null
        } else {
            $PersistentMemoryType = $JsonParameters.PSobject.Properties["PersistentMemoryType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SocketId"))) { #optional property not found
            $SocketId = $null
        } else {
            $SocketId = $JsonParameters.PSobject.Properties["SocketId"].value
        }

        $PSO = [PSCustomObject]@{
            "MemoryModePercentage" = ${MemoryModePercentage}
            "PersistentMemoryType" = ${PersistentMemoryType}
            "SocketId" = ${SocketId}
        }

        return $PSO
    }

}
