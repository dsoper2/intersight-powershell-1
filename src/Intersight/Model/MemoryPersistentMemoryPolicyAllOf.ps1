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

Definition of the list of properties defined in 'memory.PersistentMemoryPolicy', excluding properties defined in parent classes.

.PARAMETER Goals
No description available.
.PARAMETER LocalSecurity
No description available.
.PARAMETER LogicalNamespaces
No description available.
.PARAMETER ManagementMode
Management Mode of the policy. This can be either Configured from Intersight or Configured from Operating System.
.PARAMETER RetainNamespaces
Persistent Memory Namespaces to be retained or not.
.PARAMETER Organization
No description available.
.PARAMETER Profiles
An array of relationships to policyAbstractConfigProfile resources.
.OUTPUTS

MemoryPersistentMemoryPolicyAllOf<PSCustomObject>
#>

function Initialize-IntersightMemoryPersistentMemoryPolicyAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Goals},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LocalSecurity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${LogicalNamespaces},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("configured-from-intersight", "configured-from-operating-system")]
        [String]
        ${ManagementMode} = "configured-from-intersight",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RetainNamespaces},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Profiles}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightMemoryPersistentMemoryPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Goals" = ${Goals}
            "LocalSecurity" = ${LocalSecurity}
            "LogicalNamespaces" = ${LogicalNamespaces}
            "ManagementMode" = ${ManagementMode}
            "RetainNamespaces" = ${RetainNamespaces}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MemoryPersistentMemoryPolicyAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to MemoryPersistentMemoryPolicyAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MemoryPersistentMemoryPolicyAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToMemoryPersistentMemoryPolicyAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightMemoryPersistentMemoryPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightMemoryPersistentMemoryPolicyAllOf
        $AllProperties = ("Goals", "LocalSecurity", "LogicalNamespaces", "ManagementMode", "RetainNamespaces", "Organization", "Profiles")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Goals"))) { #optional property not found
            $Goals = $null
        } else {
            $Goals = $JsonParameters.PSobject.Properties["Goals"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LocalSecurity"))) { #optional property not found
            $LocalSecurity = $null
        } else {
            $LocalSecurity = $JsonParameters.PSobject.Properties["LocalSecurity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LogicalNamespaces"))) { #optional property not found
            $LogicalNamespaces = $null
        } else {
            $LogicalNamespaces = $JsonParameters.PSobject.Properties["LogicalNamespaces"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ManagementMode"))) { #optional property not found
            $ManagementMode = $null
        } else {
            $ManagementMode = $JsonParameters.PSobject.Properties["ManagementMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RetainNamespaces"))) { #optional property not found
            $RetainNamespaces = $null
        } else {
            $RetainNamespaces = $JsonParameters.PSobject.Properties["RetainNamespaces"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Profiles"))) { #optional property not found
            $Profiles = $null
        } else {
            $Profiles = $JsonParameters.PSobject.Properties["Profiles"].value
        }

        $PSO = [PSCustomObject]@{
            "Goals" = ${Goals}
            "LocalSecurity" = ${LocalSecurity}
            "LogicalNamespaces" = ${LogicalNamespaces}
            "ManagementMode" = ${ManagementMode}
            "RetainNamespaces" = ${RetainNamespaces}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
        }

        return $PSO
    }

}

