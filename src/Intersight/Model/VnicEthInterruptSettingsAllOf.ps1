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

Definition of the list of properties defined in 'vnic.EthInterruptSettings', excluding properties defined in parent classes.

.PARAMETER CoalescingTime
The time to wait between interrupts or the idle period that must be encountered before an interrupt is sent. To turn off interrupt coalescing, enter 0 (zero) in this field.
.PARAMETER CoalescingType
Interrupt Coalescing Type. This can be one of the following:- MIN  — The system waits for the time specified in the Coalescing Time field before sending another interrupt event IDLE — The system does not send an interrupt until there is a period of no activity lasting as least as long as the time specified in the Coalescing Time field.
.PARAMETER Count
The number of interrupt resources to allocate. Typical value is be equal to the number of completion queue resources.
.PARAMETER Mode
Preferred driver interrupt mode. This can be one of the following:- MSIx — Message Signaled Interrupts (MSI) with the optional extension. MSI   — MSI only. INTx  — PCI INTx interrupts. MSIx is the recommended option.
.OUTPUTS

VnicEthInterruptSettingsAllOf<PSCustomObject>
#>

function Initialize-IntersightVnicEthInterruptSettingsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${CoalescingTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MIN", "IDLE")]
        [String]
        ${CoalescingType} = "MIN",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Count},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MSIx", "MSI", "INTx")]
        [String]
        ${Mode} = "MSIx"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVnicEthInterruptSettingsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$CoalescingTime -and $CoalescingTime -gt 65535) {
          throw "invalid value for 'CoalescingTime', must be smaller than or equal to 65535."
        }

        if (!$CoalescingTime -and $CoalescingTime -lt 0) {
          throw "invalid value for 'CoalescingTime', must be greater than or equal to 0."
        }

        if (!$Count -and $Count -gt 514) {
          throw "invalid value for 'Count', must be smaller than or equal to 514."
        }

        if (!$Count -and $Count -lt 1) {
          throw "invalid value for 'Count', must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "CoalescingTime" = ${CoalescingTime}
            "CoalescingType" = ${CoalescingType}
            "Count" = ${Count}
            "Mode" = ${Mode}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VnicEthInterruptSettingsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to VnicEthInterruptSettingsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VnicEthInterruptSettingsAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVnicEthInterruptSettingsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVnicEthInterruptSettingsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVnicEthInterruptSettingsAllOf
        $AllProperties = ("CoalescingTime", "CoalescingType", "Count", "Mode")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CoalescingTime"))) { #optional property not found
            $CoalescingTime = $null
        } else {
            $CoalescingTime = $JsonParameters.PSobject.Properties["CoalescingTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CoalescingType"))) { #optional property not found
            $CoalescingType = $null
        } else {
            $CoalescingType = $JsonParameters.PSobject.Properties["CoalescingType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Count"))) { #optional property not found
            $Count = $null
        } else {
            $Count = $JsonParameters.PSobject.Properties["Count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Mode"))) { #optional property not found
            $Mode = $null
        } else {
            $Mode = $JsonParameters.PSobject.Properties["Mode"].value
        }

        $PSO = [PSCustomObject]@{
            "CoalescingTime" = ${CoalescingTime}
            "CoalescingType" = ${CoalescingType}
            "Count" = ${Count}
            "Mode" = ${Mode}
        }

        return $PSO
    }

}

