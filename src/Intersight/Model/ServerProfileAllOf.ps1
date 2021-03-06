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

Definition of the list of properties defined in 'server.Profile', excluding properties defined in parent classes.

.PARAMETER ConfigChanges
No description available.
.PARAMETER PmcDeployedSecurePassphrase
Secure passphrase that is already deployed on all the Persistent Memory Modules on the server. This deployed passphrase is required during deploy of server profile if secure passphrase is changed or security is disabled in the attached persistent memory policy.
.PARAMETER TargetPlatform
The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight.
.PARAMETER AssignedServer
No description available.
.PARAMETER AssociatedServer
No description available.
.PARAMETER ConfigResult
No description available.
.PARAMETER Organization
No description available.
.OUTPUTS

ServerProfileAllOf<PSCustomObject>
#>

function Initialize-IntersightServerProfileAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConfigChanges},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PmcDeployedSecurePassphrase},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Standalone", "FIAttached")]
        [String]
        ${TargetPlatform} = "Standalone",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssignedServer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssociatedServer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConfigResult},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightServerProfileAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "ConfigChanges" = ${ConfigChanges}
            "PmcDeployedSecurePassphrase" = ${PmcDeployedSecurePassphrase}
            "TargetPlatform" = ${TargetPlatform}
            "AssignedServer" = ${AssignedServer}
            "AssociatedServer" = ${AssociatedServer}
            "ConfigResult" = ${ConfigResult}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ServerProfileAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ServerProfileAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ServerProfileAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToServerProfileAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightServerProfileAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightServerProfileAllOf
        $AllProperties = ("ConfigChanges", "IsPmcDeployedSecurePassphraseSet", "PmcDeployedSecurePassphrase", "TargetPlatform", "AssignedServer", "AssociatedServer", "ConfigChangeDetails", "ConfigResult", "Organization", "RunningWorkflows")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigChanges"))) { #optional property not found
            $ConfigChanges = $null
        } else {
            $ConfigChanges = $JsonParameters.PSobject.Properties["ConfigChanges"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsPmcDeployedSecurePassphraseSet"))) { #optional property not found
            $IsPmcDeployedSecurePassphraseSet = $null
        } else {
            $IsPmcDeployedSecurePassphraseSet = $JsonParameters.PSobject.Properties["IsPmcDeployedSecurePassphraseSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PmcDeployedSecurePassphrase"))) { #optional property not found
            $PmcDeployedSecurePassphrase = $null
        } else {
            $PmcDeployedSecurePassphrase = $JsonParameters.PSobject.Properties["PmcDeployedSecurePassphrase"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TargetPlatform"))) { #optional property not found
            $TargetPlatform = $null
        } else {
            $TargetPlatform = $JsonParameters.PSobject.Properties["TargetPlatform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AssignedServer"))) { #optional property not found
            $AssignedServer = $null
        } else {
            $AssignedServer = $JsonParameters.PSobject.Properties["AssignedServer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AssociatedServer"))) { #optional property not found
            $AssociatedServer = $null
        } else {
            $AssociatedServer = $JsonParameters.PSobject.Properties["AssociatedServer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigChangeDetails"))) { #optional property not found
            $ConfigChangeDetails = $null
        } else {
            $ConfigChangeDetails = $JsonParameters.PSobject.Properties["ConfigChangeDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigResult"))) { #optional property not found
            $ConfigResult = $null
        } else {
            $ConfigResult = $JsonParameters.PSobject.Properties["ConfigResult"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RunningWorkflows"))) { #optional property not found
            $RunningWorkflows = $null
        } else {
            $RunningWorkflows = $JsonParameters.PSobject.Properties["RunningWorkflows"].value
        }

        $PSO = [PSCustomObject]@{
            "ConfigChanges" = ${ConfigChanges}
            "IsPmcDeployedSecurePassphraseSet" = ${IsPmcDeployedSecurePassphraseSet}
            "PmcDeployedSecurePassphrase" = ${PmcDeployedSecurePassphrase}
            "TargetPlatform" = ${TargetPlatform}
            "AssignedServer" = ${AssignedServer}
            "AssociatedServer" = ${AssociatedServer}
            "ConfigChangeDetails" = ${ConfigChangeDetails}
            "ConfigResult" = ${ConfigResult}
            "Organization" = ${Organization}
            "RunningWorkflows" = ${RunningWorkflows}
        }

        return $PSO
    }

}

