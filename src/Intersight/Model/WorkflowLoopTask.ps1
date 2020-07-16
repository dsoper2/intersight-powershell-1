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

A LoopTask is a control task that runs one or more task multiple times based on a counter. The tasks can be run in serial or parallel.

.PARAMETER ObjectType
The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types.
.PARAMETER Description
The description of this task instance in the workflow.
.PARAMETER Label
A user defined label identifier of the workflow task used for UI display.
.PARAMETER Name
The name of the task within the workflow and it must be unique among all WorkflowTasks within a workflow definition. This name serves as the internal unique identifier for the task and is used to pick input and output parameters to feed into other tasks.
.PARAMETER Count
Count value for the loop, this can be a constant or an expression which will evaluate to an integer value. Example, Use the length of the input A which is an array. Count must be less than or equal to 500.
.PARAMETER LoopStartTask
Start task where the list of tasks will be executed multiple times based on the count value.
.PARAMETER NumberOfBatches
When tasks are run in parallel and the count is large, the actual number of task run in parallel can be controlled by this property. If count is 100 and numberOfBatches is 5 then 20 tasks are run in parallel 5 times. Parallel batch size must be less than the count. In cases where count is dynamic and depends on input given during workflow execution, if that count is less than batch then empty batches might get created which do not have any tasks under them.
.PARAMETER OnSuccess
This specifies the name of the next task to run if all iterations of the loop task succeeds.  This is the unique name given to the task instance within the workflow. In a graph model, denotes an edge to another Task Node.
.PARAMETER Parallel
When set to true the loop will run in parallel else it will run in a serial fashion. Only one task is supported inside the loop task when the loop is run in parallel. Subworkflow can be used inside the single loop task to build complex conditions.
.OUTPUTS

WorkflowLoopTask<PSCustomObject>
#>

function Initialize-IntersightWorkflowLoopTask {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_:-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Count},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LoopStartTask},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NumberOfBatches},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OnSuccess},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Parallel}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowLoopTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$NumberOfBatches -and $NumberOfBatches -lt 1) {
          throw "invalid value for 'NumberOfBatches', must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "ObjectType" = ${ObjectType}
            "Description" = ${Description}
            "Label" = ${Label}
            "Name" = ${Name}
            "Count" = ${Count}
            "LoopStartTask" = ${LoopStartTask}
            "NumberOfBatches" = ${NumberOfBatches}
            "OnSuccess" = ${OnSuccess}
            "Parallel" = ${Parallel}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowLoopTask<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowLoopTask<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowLoopTask<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowLoopTask {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowLoopTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowLoopTask
        $AllProperties = ("ClassId", "ObjectType", "Description", "Label", "Name", "Count", "LoopStartTask", "NumberOfBatches", "OnSuccess", "Parallel")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `ClassId` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property `ClassId` missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property `ObjectType` missing."
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["ObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["Label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Count"))) { #optional property not found
            $Count = $null
        } else {
            $Count = $JsonParameters.PSobject.Properties["Count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LoopStartTask"))) { #optional property not found
            $LoopStartTask = $null
        } else {
            $LoopStartTask = $JsonParameters.PSobject.Properties["LoopStartTask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumberOfBatches"))) { #optional property not found
            $NumberOfBatches = $null
        } else {
            $NumberOfBatches = $JsonParameters.PSobject.Properties["NumberOfBatches"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OnSuccess"))) { #optional property not found
            $OnSuccess = $null
        } else {
            $OnSuccess = $JsonParameters.PSobject.Properties["OnSuccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parallel"))) { #optional property not found
            $Parallel = $null
        } else {
            $Parallel = $JsonParameters.PSobject.Properties["Parallel"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Description" = ${Description}
            "Label" = ${Label}
            "Name" = ${Name}
            "Count" = ${Count}
            "LoopStartTask" = ${LoopStartTask}
            "NumberOfBatches" = ${NumberOfBatches}
            "OnSuccess" = ${OnSuccess}
            "Parallel" = ${Parallel}
        }

        return $PSO
    }

}
