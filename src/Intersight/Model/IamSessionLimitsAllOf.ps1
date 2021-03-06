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

Definition of the list of properties defined in 'iam.SessionLimits', excluding properties defined in parent classes.

.PARAMETER IdleTimeOut
The idle timeout interval for the web session in seconds. When a session is not refreshed for this duration, the session is marked as idle and removed.
.PARAMETER SessionTimeOut
The session expiry duration in seconds.
.PARAMETER Account
No description available.
.PARAMETER Permission
No description available.
.OUTPUTS

IamSessionLimitsAllOf<PSCustomObject>
#>

function Initialize-IntersightIamSessionLimitsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${IdleTimeOut},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SessionTimeOut},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Permission}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightIamSessionLimitsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$IdleTimeOut -and $IdleTimeOut -gt 18000) {
          throw "invalid value for 'IdleTimeOut', must be smaller than or equal to 18000."
        }

        if (!$IdleTimeOut -and $IdleTimeOut -lt 300) {
          throw "invalid value for 'IdleTimeOut', must be greater than or equal to 300."
        }

        if (!$SessionTimeOut -and $SessionTimeOut -gt 31536000) {
          throw "invalid value for 'SessionTimeOut', must be smaller than or equal to 31536000."
        }

        if (!$SessionTimeOut -and $SessionTimeOut -lt 300) {
          throw "invalid value for 'SessionTimeOut', must be greater than or equal to 300."
        }

        
        $PSO = [PSCustomObject]@{
            "IdleTimeOut" = ${IdleTimeOut}
            "SessionTimeOut" = ${SessionTimeOut}
            "Account" = ${Account}
            "Permission" = ${Permission}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IamSessionLimitsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to IamSessionLimitsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IamSessionLimitsAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToIamSessionLimitsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightIamSessionLimitsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightIamSessionLimitsAllOf
        $AllProperties = ("IdleTimeOut", "MaximumLimit", "PerUserLimit", "SessionTimeOut", "Account", "Permission")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IdleTimeOut"))) { #optional property not found
            $IdleTimeOut = $null
        } else {
            $IdleTimeOut = $JsonParameters.PSobject.Properties["IdleTimeOut"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaximumLimit"))) { #optional property not found
            $MaximumLimit = $null
        } else {
            $MaximumLimit = $JsonParameters.PSobject.Properties["MaximumLimit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PerUserLimit"))) { #optional property not found
            $PerUserLimit = $null
        } else {
            $PerUserLimit = $JsonParameters.PSobject.Properties["PerUserLimit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SessionTimeOut"))) { #optional property not found
            $SessionTimeOut = $null
        } else {
            $SessionTimeOut = $JsonParameters.PSobject.Properties["SessionTimeOut"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Permission"))) { #optional property not found
            $Permission = $null
        } else {
            $Permission = $JsonParameters.PSobject.Properties["Permission"].value
        }

        $PSO = [PSCustomObject]@{
            "IdleTimeOut" = ${IdleTimeOut}
            "MaximumLimit" = ${MaximumLimit}
            "PerUserLimit" = ${PerUserLimit}
            "SessionTimeOut" = ${SessionTimeOut}
            "Account" = ${Account}
            "Permission" = ${Permission}
        }

        return $PSO
    }

}

