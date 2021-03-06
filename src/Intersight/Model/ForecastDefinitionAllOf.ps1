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

Definition of the list of properties defined in 'forecast.Definition', excluding properties defined in parent classes.

.PARAMETER Catalog
No description available.
.OUTPUTS

ForecastDefinitionAllOf<PSCustomObject>
#>

function Initialize-IntersightForecastDefinitionAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Catalog}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightForecastDefinitionAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Catalog" = ${Catalog}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ForecastDefinitionAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ForecastDefinitionAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ForecastDefinitionAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToForecastDefinitionAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightForecastDefinitionAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightForecastDefinitionAllOf
        $AllProperties = ("AlertThresholdInPercentage", "DataSource", "MetricName", "MinNumOfDaysOfData", "NumOfDaysOfHistoricalData", "PlatformType", "Catalog")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AlertThresholdInPercentage"))) { #optional property not found
            $AlertThresholdInPercentage = $null
        } else {
            $AlertThresholdInPercentage = $JsonParameters.PSobject.Properties["AlertThresholdInPercentage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DataSource"))) { #optional property not found
            $DataSource = $null
        } else {
            $DataSource = $JsonParameters.PSobject.Properties["DataSource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MetricName"))) { #optional property not found
            $MetricName = $null
        } else {
            $MetricName = $JsonParameters.PSobject.Properties["MetricName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MinNumOfDaysOfData"))) { #optional property not found
            $MinNumOfDaysOfData = $null
        } else {
            $MinNumOfDaysOfData = $JsonParameters.PSobject.Properties["MinNumOfDaysOfData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumOfDaysOfHistoricalData"))) { #optional property not found
            $NumOfDaysOfHistoricalData = $null
        } else {
            $NumOfDaysOfHistoricalData = $JsonParameters.PSobject.Properties["NumOfDaysOfHistoricalData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PlatformType"))) { #optional property not found
            $PlatformType = $null
        } else {
            $PlatformType = $JsonParameters.PSobject.Properties["PlatformType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Catalog"))) { #optional property not found
            $Catalog = $null
        } else {
            $Catalog = $JsonParameters.PSobject.Properties["Catalog"].value
        }

        $PSO = [PSCustomObject]@{
            "AlertThresholdInPercentage" = ${AlertThresholdInPercentage}
            "DataSource" = ${DataSource}
            "MetricName" = ${MetricName}
            "MinNumOfDaysOfData" = ${MinNumOfDaysOfData}
            "NumOfDaysOfHistoricalData" = ${NumOfDaysOfHistoricalData}
            "PlatformType" = ${PlatformType}
            "Catalog" = ${Catalog}
        }

        return $PSO
    }

}

