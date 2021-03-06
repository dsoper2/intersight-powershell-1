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

Definition of the list of properties defined in 'policy.AbstractConfigResult', excluding properties defined in parent classes.

.PARAMETER ConfigStage
The current running stage of the configuration or workflow.
.PARAMETER ConfigState
Indicates overall configuration state for applying the configuration to the end point. Values  -- Ok, Ok-with-warning, Errored.
.PARAMETER ValidationState
Indicates overall state for logical model validation. Values  -- Ok, Ok-with-warning, Errored.
.OUTPUTS

PolicyAbstractConfigResultAllOf<PSCustomObject>
#>

function Initialize-IntersightPolicyAbstractConfigResultAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConfigStage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConfigState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ValidationState}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightPolicyAbstractConfigResultAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "ConfigStage" = ${ConfigStage}
            "ConfigState" = ${ConfigState}
            "ValidationState" = ${ValidationState}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PolicyAbstractConfigResultAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to PolicyAbstractConfigResultAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PolicyAbstractConfigResultAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToPolicyAbstractConfigResultAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightPolicyAbstractConfigResultAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightPolicyAbstractConfigResultAllOf
        $AllProperties = ("ConfigStage", "ConfigState", "ValidationState")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigStage"))) { #optional property not found
            $ConfigStage = $null
        } else {
            $ConfigStage = $JsonParameters.PSobject.Properties["ConfigStage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigState"))) { #optional property not found
            $ConfigState = $null
        } else {
            $ConfigState = $JsonParameters.PSobject.Properties["ConfigState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ValidationState"))) { #optional property not found
            $ValidationState = $null
        } else {
            $ValidationState = $JsonParameters.PSobject.Properties["ValidationState"].value
        }

        $PSO = [PSCustomObject]@{
            "ConfigStage" = ${ConfigStage}
            "ConfigState" = ${ConfigState}
            "ValidationState" = ${ValidationState}
        }

        return $PSO
    }

}

