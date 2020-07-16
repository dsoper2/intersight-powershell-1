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

Definition of the list of properties defined in 'hyperflex.StPlatformClusterResiliencyInfo', excluding properties defined in parent classes.

.PARAMETER Messages
No description available.
.OUTPUTS

HyperflexStPlatformClusterResiliencyInfoAllOf<PSCustomObject>
#>

function Initialize-IntersightHyperflexStPlatformClusterResiliencyInfoAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Messages}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexStPlatformClusterResiliencyInfoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Messages" = ${Messages}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexStPlatformClusterResiliencyInfoAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexStPlatformClusterResiliencyInfoAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexStPlatformClusterResiliencyInfoAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexStPlatformClusterResiliencyInfoAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexStPlatformClusterResiliencyInfoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexStPlatformClusterResiliencyInfoAllOf
        $AllProperties = ("HddFailuresTolerable", "Messages", "MessagesIterator", "MessagesSize", "NodeFailuresTolerable", "SsdFailuresTolerable", "State")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HddFailuresTolerable"))) { #optional property not found
            $HddFailuresTolerable = $null
        } else {
            $HddFailuresTolerable = $JsonParameters.PSobject.Properties["HddFailuresTolerable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Messages"))) { #optional property not found
            $Messages = $null
        } else {
            $Messages = $JsonParameters.PSobject.Properties["Messages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MessagesIterator"))) { #optional property not found
            $MessagesIterator = $null
        } else {
            $MessagesIterator = $JsonParameters.PSobject.Properties["MessagesIterator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MessagesSize"))) { #optional property not found
            $MessagesSize = $null
        } else {
            $MessagesSize = $JsonParameters.PSobject.Properties["MessagesSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NodeFailuresTolerable"))) { #optional property not found
            $NodeFailuresTolerable = $null
        } else {
            $NodeFailuresTolerable = $JsonParameters.PSobject.Properties["NodeFailuresTolerable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SsdFailuresTolerable"))) { #optional property not found
            $SsdFailuresTolerable = $null
        } else {
            $SsdFailuresTolerable = $JsonParameters.PSobject.Properties["SsdFailuresTolerable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "State"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["State"].value
        }

        $PSO = [PSCustomObject]@{
            "HddFailuresTolerable" = ${HddFailuresTolerable}
            "Messages" = ${Messages}
            "MessagesIterator" = ${MessagesIterator}
            "MessagesSize" = ${MessagesSize}
            "NodeFailuresTolerable" = ${NodeFailuresTolerable}
            "SsdFailuresTolerable" = ${SsdFailuresTolerable}
            "State" = ${State}
        }

        return $PSO
    }

}
