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

Definition of the list of properties defined in 'workflow.PendingDynamicWorkflowInfo', excluding properties defined in parent classes.

.PARAMETER VarInput
The inputs of the workflow.
.PARAMETER Name
A name for the pending dynamic workflow.
.PARAMETER PendingServices
No description available.
.PARAMETER Src
The src is workflow owner service.
.PARAMETER Status
The current status of the PendingDynamicWorkflowInfo.
.PARAMETER WaitOnDuplicate
When set to true workflow engine will wait for a duplicate to finish before starting a new one.
.PARAMETER WorkflowActionTaskLists
No description available.
.PARAMETER WorkflowCtx
No description available.
.PARAMETER WorkflowKey
This key contains workflow, initiator and target name. Workflow engine uses the key to do workflow dedup.
.PARAMETER WorkflowMeta
The metadata of the workflow.
.PARAMETER WorkflowInfo
No description available.
.OUTPUTS

WorkflowPendingDynamicWorkflowInfoAllOf<PSCustomObject>
#>

function Initialize-IntersightWorkflowPendingDynamicWorkflowInfoAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${PendingServices},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Src},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GatheringTasks", "Waiting")]
        [String]
        ${Status} = "GatheringTasks",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${WaitOnDuplicate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${WorkflowActionTaskLists},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${WorkflowCtx},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkflowKey},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${WorkflowMeta},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${WorkflowInfo}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowPendingDynamicWorkflowInfoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Input" = ${VarInput}
            "Name" = ${Name}
            "PendingServices" = ${PendingServices}
            "Src" = ${Src}
            "Status" = ${Status}
            "WaitOnDuplicate" = ${WaitOnDuplicate}
            "WorkflowActionTaskLists" = ${WorkflowActionTaskLists}
            "WorkflowCtx" = ${WorkflowCtx}
            "WorkflowKey" = ${WorkflowKey}
            "WorkflowMeta" = ${WorkflowMeta}
            "WorkflowInfo" = ${WorkflowInfo}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowPendingDynamicWorkflowInfoAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowPendingDynamicWorkflowInfoAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowPendingDynamicWorkflowInfoAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowPendingDynamicWorkflowInfoAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowPendingDynamicWorkflowInfoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowPendingDynamicWorkflowInfoAllOf
        $AllProperties = ("Input", "Name", "PendingServices", "Src", "Status", "WaitOnDuplicate", "WorkflowActionTaskLists", "WorkflowCtx", "WorkflowKey", "WorkflowMeta", "WorkflowInfo")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["Input"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PendingServices"))) { #optional property not found
            $PendingServices = $null
        } else {
            $PendingServices = $JsonParameters.PSobject.Properties["PendingServices"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Src"))) { #optional property not found
            $Src = $null
        } else {
            $Src = $JsonParameters.PSobject.Properties["Src"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WaitOnDuplicate"))) { #optional property not found
            $WaitOnDuplicate = $null
        } else {
            $WaitOnDuplicate = $JsonParameters.PSobject.Properties["WaitOnDuplicate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowActionTaskLists"))) { #optional property not found
            $WorkflowActionTaskLists = $null
        } else {
            $WorkflowActionTaskLists = $JsonParameters.PSobject.Properties["WorkflowActionTaskLists"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowCtx"))) { #optional property not found
            $WorkflowCtx = $null
        } else {
            $WorkflowCtx = $JsonParameters.PSobject.Properties["WorkflowCtx"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowKey"))) { #optional property not found
            $WorkflowKey = $null
        } else {
            $WorkflowKey = $JsonParameters.PSobject.Properties["WorkflowKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowMeta"))) { #optional property not found
            $WorkflowMeta = $null
        } else {
            $WorkflowMeta = $JsonParameters.PSobject.Properties["WorkflowMeta"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowInfo"))) { #optional property not found
            $WorkflowInfo = $null
        } else {
            $WorkflowInfo = $JsonParameters.PSobject.Properties["WorkflowInfo"].value
        }

        $PSO = [PSCustomObject]@{
            "Input" = ${VarInput}
            "Name" = ${Name}
            "PendingServices" = ${PendingServices}
            "Src" = ${Src}
            "Status" = ${Status}
            "WaitOnDuplicate" = ${WaitOnDuplicate}
            "WorkflowActionTaskLists" = ${WorkflowActionTaskLists}
            "WorkflowCtx" = ${WorkflowCtx}
            "WorkflowKey" = ${WorkflowKey}
            "WorkflowMeta" = ${WorkflowMeta}
            "WorkflowInfo" = ${WorkflowInfo}
        }

        return $PSO
    }

}

