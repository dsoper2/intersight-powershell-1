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

No description available.

.PARAMETER DataSource
No description available.
.PARAMETER Intervals
A JSON Object representing ISO-8601 Intervals. This defines the time ranges to run the query over.
.PARAMETER ResultFormat
How the results are represented, list, compactedList or valueVector. Currently only list and compactedList are supported.
.PARAMETER VarFilter
No description available.
.PARAMETER Columns
A String array of dimensions and metrics to scan. If left empty, all dimensions and metrics are returned.
.PARAMETER BatchSize
The maximum number of rows buffered before being returned to the client.
.PARAMETER Limit
How many rows to return. If not specified, all rows will be returned.
.PARAMETER Order
The ordering of returned rows based on timestamp. ""ascending"", ""descending"", and ""none"" (default) are supported. Currently, ""ascending"" and ""descending"" are only supported for queries where the __time column is included in the columns field and the requirements outlined in the time ordering section are met.
.PARAMETER Legacy
Return results consistent with the legacy ""scan-query"" contrib extension. Defaults to the value set by druid.query.scan.legacy, which in turn defaults to false.
.PARAMETER Context
No description available.
.OUTPUTS

TelemetryDruidScanRequestAllOf<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidScanRequestAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DataSource},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Intervals},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("list", "compactedList")]
        [String]
        ${ResultFormat} = "list",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarFilter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Columns},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${BatchSize} = 20480,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("none", "ascending", "descending")]
        [String]
        ${Order} = "none",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Legacy} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Context}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidScanRequestAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$DataSource) {
            throw "invalid value for 'DataSource', 'DataSource' cannot be null."
        }

        if (!$Intervals) {
            throw "invalid value for 'Intervals', 'Intervals' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "dataSource" = ${DataSource}
            "intervals" = ${Intervals}
            "resultFormat" = ${ResultFormat}
            "filter" = ${VarFilter}
            "columns" = ${Columns}
            "batchSize" = ${BatchSize}
            "limit" = ${Limit}
            "order" = ${Order}
            "legacy" = ${Legacy}
            "context" = ${Context}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidScanRequestAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidScanRequestAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidScanRequestAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidScanRequestAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidScanRequestAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidScanRequestAllOf
        $AllProperties = ("dataSource", "intervals", "resultFormat", "filter", "columns", "batchSize", "limit", "order", "legacy", "context")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `dataSource` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dataSource"))) {
            throw "Error! JSON cannot be serialized due to the required property `dataSource` missing."
        } else {
            $DataSource = $JsonParameters.PSobject.Properties["dataSource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "intervals"))) {
            throw "Error! JSON cannot be serialized due to the required property `intervals` missing."
        } else {
            $Intervals = $JsonParameters.PSobject.Properties["intervals"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resultFormat"))) { #optional property not found
            $ResultFormat = $null
        } else {
            $ResultFormat = $JsonParameters.PSobject.Properties["resultFormat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filter"))) { #optional property not found
            $VarFilter = $null
        } else {
            $VarFilter = $JsonParameters.PSobject.Properties["filter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "columns"))) { #optional property not found
            $Columns = $null
        } else {
            $Columns = $JsonParameters.PSobject.Properties["columns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "batchSize"))) { #optional property not found
            $BatchSize = $null
        } else {
            $BatchSize = $JsonParameters.PSobject.Properties["batchSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "limit"))) { #optional property not found
            $Limit = $null
        } else {
            $Limit = $JsonParameters.PSobject.Properties["limit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "order"))) { #optional property not found
            $Order = $null
        } else {
            $Order = $JsonParameters.PSobject.Properties["order"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "legacy"))) { #optional property not found
            $Legacy = $null
        } else {
            $Legacy = $JsonParameters.PSobject.Properties["legacy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "context"))) { #optional property not found
            $Context = $null
        } else {
            $Context = $JsonParameters.PSobject.Properties["context"].value
        }

        $PSO = [PSCustomObject]@{
            "dataSource" = ${DataSource}
            "intervals" = ${Intervals}
            "resultFormat" = ${ResultFormat}
            "filter" = ${VarFilter}
            "columns" = ${Columns}
            "batchSize" = ${BatchSize}
            "limit" = ${Limit}
            "order" = ${Order}
            "legacy" = ${Legacy}
            "context" = ${Context}
        }

        return $PSO
    }

}

