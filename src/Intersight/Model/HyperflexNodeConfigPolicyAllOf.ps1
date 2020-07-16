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

Definition of the list of properties defined in 'hyperflex.NodeConfigPolicy', excluding properties defined in parent classes.

.PARAMETER DataIpRange
No description available.
.PARAMETER HxdpIpRange
No description available.
.PARAMETER MgmtIpRange
No description available.
.PARAMETER NodeNamePrefix
The node name prefix that is used to automatically generate the default hostname for each server. A dash (-) will be appended to the prefix followed by the node number to form a hostname. This default naming scheme can be manually overridden in the node configuration. The maximum length of a prefix is 60, must only contain alphanumeric characters or dash (-), and must start with an alphanumeric character.
.PARAMETER ClusterProfiles
An array of relationships to hyperflexClusterProfile resources.
.PARAMETER Organization
No description available.
.OUTPUTS

HyperflexNodeConfigPolicyAllOf<PSCustomObject>
#>

function Initialize-IntersightHyperflexNodeConfigPolicyAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DataIpRange},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${HxdpIpRange},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MgmtIpRange},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9][a-zA-Z0-9-]{1,59}$")]
        [String]
        ${NodeNamePrefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ClusterProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexNodeConfigPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "DataIpRange" = ${DataIpRange}
            "HxdpIpRange" = ${HxdpIpRange}
            "MgmtIpRange" = ${MgmtIpRange}
            "NodeNamePrefix" = ${NodeNamePrefix}
            "ClusterProfiles" = ${ClusterProfiles}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexNodeConfigPolicyAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexNodeConfigPolicyAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexNodeConfigPolicyAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexNodeConfigPolicyAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexNodeConfigPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexNodeConfigPolicyAllOf
        $AllProperties = ("DataIpRange", "HxdpIpRange", "MgmtIpRange", "NodeNamePrefix", "ClusterProfiles", "Organization")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DataIpRange"))) { #optional property not found
            $DataIpRange = $null
        } else {
            $DataIpRange = $JsonParameters.PSobject.Properties["DataIpRange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HxdpIpRange"))) { #optional property not found
            $HxdpIpRange = $null
        } else {
            $HxdpIpRange = $JsonParameters.PSobject.Properties["HxdpIpRange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MgmtIpRange"))) { #optional property not found
            $MgmtIpRange = $null
        } else {
            $MgmtIpRange = $JsonParameters.PSobject.Properties["MgmtIpRange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NodeNamePrefix"))) { #optional property not found
            $NodeNamePrefix = $null
        } else {
            $NodeNamePrefix = $JsonParameters.PSobject.Properties["NodeNamePrefix"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterProfiles"))) { #optional property not found
            $ClusterProfiles = $null
        } else {
            $ClusterProfiles = $JsonParameters.PSobject.Properties["ClusterProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        $PSO = [PSCustomObject]@{
            "DataIpRange" = ${DataIpRange}
            "HxdpIpRange" = ${HxdpIpRange}
            "MgmtIpRange" = ${MgmtIpRange}
            "NodeNamePrefix" = ${NodeNamePrefix}
            "ClusterProfiles" = ${ClusterProfiles}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}
