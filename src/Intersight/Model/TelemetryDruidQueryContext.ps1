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

The query context is used for various query configuration parameters. Can be used to modify query behavior, including grand totals and zero-filling.

.PARAMETER GrandTotal
Druid can include an extra ""grand totals"" row as the last row of a timeseries result set. To enable this, set ""grandTotal"" to true. The grand totals row will appear as the last row in the result array, and will have no timestamp. It will be the last row even if the query is run in ""descending"" mode. Post-aggregations in the grand totals row will be computed based upon the grand total aggregations.
.PARAMETER SkipEmptyBuckets
Timeseries queries normally fill empty interior time buckets with zeroes. Time buckets that lie completely outside the data interval are not zero-filled. You can disable all zero-filling with this flag. In this mode, the data point for empty buckets are omitted from the results.
.PARAMETER Timeout
Query timeout in milliseconds, beyond which unfinished queries will be cancelled. 0 timeout means no timeout.
.PARAMETER Priority
Query Priority. Queries with higher priority get precedence for computational resources.
.PARAMETER QueryId
Unique identifier given to this query. If a query ID is set or known, this can be used to cancel the query.
.PARAMETER UseCache
Flag indicating whether to leverage the query cache for this query. When set to false, it disables reading from the query cache for this query. When set to true, Apache Druid uses druid.broker.cache.useCache or druid.historical.cache.useCache to determine whether or not to read from the query cache.
.PARAMETER PopulateCache
Flag indicating whether to save the results of the query to the query cache. Primarily used for debugging. When set to false, it disables saving the results of this query to the query cache. When set to true, Druid uses druid.broker.cache.populateCache or druid.historical.cache.populateCache to determine whether or not to save the results of this query to the query cache.
.PARAMETER UseResultLevelCache
Flag indicating whether to leverage the result level cache for this query. When set to false, it disables reading from the query cache for this query. When set to true, Druid uses druid.broker.cache.useResultLevelCache to determine whether or not to read from the result-level query cache.
.PARAMETER PopulateResultLevelCache
Flag indicating whether to save the results of the query to the result level cache. Primarily used for debugging. When set to false, it disables saving the results of this query to the query cache. When set to true, Druid uses druid.broker.cache.populateResultLevelCache to determine whether or not to save the results of this query to the result-level query cache.
.PARAMETER BySegment
Return ""by segment"" results. Primarily used for debugging, setting it to true returns results associated with the data segment they came from.
.PARAMETER Finalize
Flag indicating whether to ""finalize"" aggregation results. Primarily used for debugging. For instance, the hyperUnique aggregator will return the full HyperLogLog sketch instead of the estimated cardinality when this flag is set to false.
.PARAMETER ChunkPeriod
At the Broker process level, long interval queries (of any type) may be broken into shorter interval queries to parallelize merging more than normal. Broken up queries will use a larger share of cluster resources, but, if you use groupBy ""v1, it may be able to complete faster as a result. Use ISO 8601 periods. For example, if this property is set to P1M (one month), then a query covering a year would be broken into 12 smaller queries. The broker uses its query processing executor service to initiate processing for query chunks, so make sure druid.processing.numThreads is configured appropriately on the broker. groupBy queries do not support chunkPeriod by default, although they do if using the legacy ""v1"" engine. This context is deprecated since it's only useful for groupBy ""v1"", and will be removed in the future releases.
.PARAMETER MaxScatterGatherBytes
Maximum number of bytes gathered from data processes such as Historicals and realtime processes to execute a query. This parameter can be used to further reduce maxScatterGatherBytes limit at query time.
.PARAMETER MaxQueuedBytes
Maximum number of bytes queued per query before exerting backpressure on the channel to the data server. Similar to maxScatterGatherBytes, except unlike that configuration, this one will trigger backpressure rather than query failure. Zero means disabled.
.PARAMETER SerializeDateTimeAsLong
If true, DateTime is serialized as long in the result returned by Broker and the data transportation between Broker and compute process.
.PARAMETER SerializeDateTimeAsLongInner
If true, DateTime is serialized as long in the data transportation between Broker and compute process.
.PARAMETER EnableParallelMerge
Enable parallel result merging on the Broker. Note that druid.processing.merge.useParallelMergePool must be enabled for this setting to be set to true.
.PARAMETER ParallelMergeParallelism
Maximum number of parallel threads to use for parallel result merging on the Broker.
.PARAMETER ParallelMergeInitialYieldRows
Number of rows to yield per ForkJoinPool merge task for parallel result merging on the Broker, before forking off a new task to continue merging sequences.
.PARAMETER ParallelMergeSmallBatchRows
Size of result batches to operate on in ForkJoinPool merge tasks for parallel result merging on the Broker.
.OUTPUTS

TelemetryDruidQueryContext<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidQueryContext {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${GrandTotal},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SkipEmptyBuckets},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Timeout},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Priority},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${QueryId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseCache},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PopulateCache},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseResultLevelCache},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PopulateResultLevelCache},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${BySegment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Finalize},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ChunkPeriod},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxScatterGatherBytes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxQueuedBytes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SerializeDateTimeAsLong},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SerializeDateTimeAsLongInner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableParallelMerge},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ParallelMergeParallelism},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ParallelMergeInitialYieldRows},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ParallelMergeSmallBatchRows}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidQueryContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "grandTotal" = ${GrandTotal}
            "skipEmptyBuckets" = ${SkipEmptyBuckets}
            "timeout" = ${Timeout}
            "priority" = ${Priority}
            "queryId" = ${QueryId}
            "useCache" = ${UseCache}
            "populateCache" = ${PopulateCache}
            "useResultLevelCache" = ${UseResultLevelCache}
            "populateResultLevelCache" = ${PopulateResultLevelCache}
            "bySegment" = ${BySegment}
            "finalize" = ${Finalize}
            "chunkPeriod" = ${ChunkPeriod}
            "maxScatterGatherBytes" = ${MaxScatterGatherBytes}
            "maxQueuedBytes" = ${MaxQueuedBytes}
            "serializeDateTimeAsLong" = ${SerializeDateTimeAsLong}
            "serializeDateTimeAsLongInner" = ${SerializeDateTimeAsLongInner}
            "enableParallelMerge" = ${EnableParallelMerge}
            "parallelMergeParallelism" = ${ParallelMergeParallelism}
            "parallelMergeInitialYieldRows" = ${ParallelMergeInitialYieldRows}
            "parallelMergeSmallBatchRows" = ${ParallelMergeSmallBatchRows}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidQueryContext<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidQueryContext<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidQueryContext<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidQueryContext {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidQueryContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidQueryContext
        $AllProperties = ("grandTotal", "skipEmptyBuckets", "timeout", "priority", "queryId", "useCache", "populateCache", "useResultLevelCache", "populateResultLevelCache", "bySegment", "finalize", "chunkPeriod", "maxScatterGatherBytes", "maxQueuedBytes", "serializeDateTimeAsLong", "serializeDateTimeAsLongInner", "enableParallelMerge", "parallelMergeParallelism", "parallelMergeInitialYieldRows", "parallelMergeSmallBatchRows")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "grandTotal"))) { #optional property not found
            $GrandTotal = $null
        } else {
            $GrandTotal = $JsonParameters.PSobject.Properties["grandTotal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "skipEmptyBuckets"))) { #optional property not found
            $SkipEmptyBuckets = $null
        } else {
            $SkipEmptyBuckets = $JsonParameters.PSobject.Properties["skipEmptyBuckets"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeout"))) { #optional property not found
            $Timeout = $null
        } else {
            $Timeout = $JsonParameters.PSobject.Properties["timeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "priority"))) { #optional property not found
            $Priority = $null
        } else {
            $Priority = $JsonParameters.PSobject.Properties["priority"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queryId"))) { #optional property not found
            $QueryId = $null
        } else {
            $QueryId = $JsonParameters.PSobject.Properties["queryId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useCache"))) { #optional property not found
            $UseCache = $null
        } else {
            $UseCache = $JsonParameters.PSobject.Properties["useCache"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "populateCache"))) { #optional property not found
            $PopulateCache = $null
        } else {
            $PopulateCache = $JsonParameters.PSobject.Properties["populateCache"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useResultLevelCache"))) { #optional property not found
            $UseResultLevelCache = $null
        } else {
            $UseResultLevelCache = $JsonParameters.PSobject.Properties["useResultLevelCache"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "populateResultLevelCache"))) { #optional property not found
            $PopulateResultLevelCache = $null
        } else {
            $PopulateResultLevelCache = $JsonParameters.PSobject.Properties["populateResultLevelCache"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bySegment"))) { #optional property not found
            $BySegment = $null
        } else {
            $BySegment = $JsonParameters.PSobject.Properties["bySegment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "finalize"))) { #optional property not found
            $Finalize = $null
        } else {
            $Finalize = $JsonParameters.PSobject.Properties["finalize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "chunkPeriod"))) { #optional property not found
            $ChunkPeriod = $null
        } else {
            $ChunkPeriod = $JsonParameters.PSobject.Properties["chunkPeriod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxScatterGatherBytes"))) { #optional property not found
            $MaxScatterGatherBytes = $null
        } else {
            $MaxScatterGatherBytes = $JsonParameters.PSobject.Properties["maxScatterGatherBytes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxQueuedBytes"))) { #optional property not found
            $MaxQueuedBytes = $null
        } else {
            $MaxQueuedBytes = $JsonParameters.PSobject.Properties["maxQueuedBytes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "serializeDateTimeAsLong"))) { #optional property not found
            $SerializeDateTimeAsLong = $null
        } else {
            $SerializeDateTimeAsLong = $JsonParameters.PSobject.Properties["serializeDateTimeAsLong"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "serializeDateTimeAsLongInner"))) { #optional property not found
            $SerializeDateTimeAsLongInner = $null
        } else {
            $SerializeDateTimeAsLongInner = $JsonParameters.PSobject.Properties["serializeDateTimeAsLongInner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enableParallelMerge"))) { #optional property not found
            $EnableParallelMerge = $null
        } else {
            $EnableParallelMerge = $JsonParameters.PSobject.Properties["enableParallelMerge"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parallelMergeParallelism"))) { #optional property not found
            $ParallelMergeParallelism = $null
        } else {
            $ParallelMergeParallelism = $JsonParameters.PSobject.Properties["parallelMergeParallelism"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parallelMergeInitialYieldRows"))) { #optional property not found
            $ParallelMergeInitialYieldRows = $null
        } else {
            $ParallelMergeInitialYieldRows = $JsonParameters.PSobject.Properties["parallelMergeInitialYieldRows"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parallelMergeSmallBatchRows"))) { #optional property not found
            $ParallelMergeSmallBatchRows = $null
        } else {
            $ParallelMergeSmallBatchRows = $JsonParameters.PSobject.Properties["parallelMergeSmallBatchRows"].value
        }

        $PSO = [PSCustomObject]@{
            "grandTotal" = ${GrandTotal}
            "skipEmptyBuckets" = ${SkipEmptyBuckets}
            "timeout" = ${Timeout}
            "priority" = ${Priority}
            "queryId" = ${QueryId}
            "useCache" = ${UseCache}
            "populateCache" = ${PopulateCache}
            "useResultLevelCache" = ${UseResultLevelCache}
            "populateResultLevelCache" = ${PopulateResultLevelCache}
            "bySegment" = ${BySegment}
            "finalize" = ${Finalize}
            "chunkPeriod" = ${ChunkPeriod}
            "maxScatterGatherBytes" = ${MaxScatterGatherBytes}
            "maxQueuedBytes" = ${MaxQueuedBytes}
            "serializeDateTimeAsLong" = ${SerializeDateTimeAsLong}
            "serializeDateTimeAsLongInner" = ${SerializeDateTimeAsLongInner}
            "enableParallelMerge" = ${EnableParallelMerge}
            "parallelMergeParallelism" = ${ParallelMergeParallelism}
            "parallelMergeInitialYieldRows" = ${ParallelMergeInitialYieldRows}
            "parallelMergeSmallBatchRows" = ${ParallelMergeSmallBatchRows}
        }

        return $PSO
    }

}

