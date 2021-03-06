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

The techsupport collection status.

.PARAMETER Moid
The unique identifier of this Managed Object instance.
.PARAMETER Owners
No description available.
.PARAMETER Tags
No description available.
.PARAMETER VersionContext
No description available.
.PARAMETER Parent
No description available.
.PARAMETER FileName
The name of the Techsupport bundle file.
.PARAMETER Reason
Reason for techsupport failure, if any.
.PARAMETER RequestTs
The time at which the techsupport request was initiated.
.PARAMETER Status
Status of techsupport collection. Valid values are Pending, CollectionInProgress, CollectionFailed, CollectionComplete, UploadPending, UploadInProgress, UploadPartsComplete, UploadFailed and Completed. The final status will be either CollectionFailed or UploadFailed if there is a failure and Completed if the request completed successfully and the file was uploaded to Intersight Storage Service. All the remaining status values indicates the progress of techsupport collection.
.PARAMETER TechsupportDownloadUrl
The Url to download the techsupport file.
.PARAMETER ClusterMember
No description available.
.PARAMETER DeviceRegistration
No description available.
.PARAMETER OriginResource
No description available.
.PARAMETER TechSupportRequest
No description available.
.OUTPUTS

TechsupportmanagementTechSupportStatus<PSCustomObject>
#>

function Initialize-IntersightTechsupportmanagementTechSupportStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Owners},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VersionContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FileName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reason},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RequestTs},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TechsupportDownloadUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ClusterMember},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DeviceRegistration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OriginResource},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TechSupportRequest}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTechsupportmanagementTechSupportStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "FileName" = ${FileName}
            "Reason" = ${Reason}
            "RequestTs" = ${RequestTs}
            "Status" = ${Status}
            "TechsupportDownloadUrl" = ${TechsupportDownloadUrl}
            "ClusterMember" = ${ClusterMember}
            "DeviceRegistration" = ${DeviceRegistration}
            "OriginResource" = ${OriginResource}
            "TechSupportRequest" = ${TechSupportRequest}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TechsupportmanagementTechSupportStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to TechsupportmanagementTechSupportStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TechsupportmanagementTechSupportStatus<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTechsupportmanagementTechSupportStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTechsupportmanagementTechSupportStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTechsupportmanagementTechSupportStatus
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "FileName", "Reason", "RelayReason", "RelayStatus", "RequestTs", "Status", "TechsupportDownloadUrl", "ClusterMember", "DeviceRegistration", "OriginResource", "TechSupportRequest")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccountMoid"))) { #optional property not found
            $AccountMoid = $null
        } else {
            $AccountMoid = $JsonParameters.PSobject.Properties["AccountMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreateTime"))) { #optional property not found
            $CreateTime = $null
        } else {
            $CreateTime = $JsonParameters.PSobject.Properties["CreateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroupMoid"))) { #optional property not found
            $DomainGroupMoid = $null
        } else {
            $DomainGroupMoid = $JsonParameters.PSobject.Properties["DomainGroupMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ModTime"))) { #optional property not found
            $ModTime = $null
        } else {
            $ModTime = $JsonParameters.PSobject.Properties["ModTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Moid"))) { #optional property not found
            $Moid = $null
        } else {
            $Moid = $JsonParameters.PSobject.Properties["Moid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Owners"))) { #optional property not found
            $Owners = $null
        } else {
            $Owners = $JsonParameters.PSobject.Properties["Owners"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SharedScope"))) { #optional property not found
            $SharedScope = $null
        } else {
            $SharedScope = $JsonParameters.PSobject.Properties["SharedScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["Tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionContext"))) { #optional property not found
            $VersionContext = $null
        } else {
            $VersionContext = $JsonParameters.PSobject.Properties["VersionContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ancestors"))) { #optional property not found
            $Ancestors = $null
        } else {
            $Ancestors = $JsonParameters.PSobject.Properties["Ancestors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parent"))) { #optional property not found
            $Parent = $null
        } else {
            $Parent = $JsonParameters.PSobject.Properties["Parent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PermissionResources"))) { #optional property not found
            $PermissionResources = $null
        } else {
            $PermissionResources = $JsonParameters.PSobject.Properties["PermissionResources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayNames"))) { #optional property not found
            $DisplayNames = $null
        } else {
            $DisplayNames = $JsonParameters.PSobject.Properties["DisplayNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FileName"))) { #optional property not found
            $FileName = $null
        } else {
            $FileName = $JsonParameters.PSobject.Properties["FileName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Reason"))) { #optional property not found
            $Reason = $null
        } else {
            $Reason = $JsonParameters.PSobject.Properties["Reason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RelayReason"))) { #optional property not found
            $RelayReason = $null
        } else {
            $RelayReason = $JsonParameters.PSobject.Properties["RelayReason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RelayStatus"))) { #optional property not found
            $RelayStatus = $null
        } else {
            $RelayStatus = $JsonParameters.PSobject.Properties["RelayStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RequestTs"))) { #optional property not found
            $RequestTs = $null
        } else {
            $RequestTs = $JsonParameters.PSobject.Properties["RequestTs"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TechsupportDownloadUrl"))) { #optional property not found
            $TechsupportDownloadUrl = $null
        } else {
            $TechsupportDownloadUrl = $JsonParameters.PSobject.Properties["TechsupportDownloadUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterMember"))) { #optional property not found
            $ClusterMember = $null
        } else {
            $ClusterMember = $JsonParameters.PSobject.Properties["ClusterMember"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceRegistration"))) { #optional property not found
            $DeviceRegistration = $null
        } else {
            $DeviceRegistration = $JsonParameters.PSobject.Properties["DeviceRegistration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OriginResource"))) { #optional property not found
            $OriginResource = $null
        } else {
            $OriginResource = $JsonParameters.PSobject.Properties["OriginResource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TechSupportRequest"))) { #optional property not found
            $TechSupportRequest = $null
        } else {
            $TechSupportRequest = $JsonParameters.PSobject.Properties["TechSupportRequest"].value
        }

        $PSO = [PSCustomObject]@{
            "AccountMoid" = ${AccountMoid}
            "ClassId" = ${ClassId}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "ObjectType" = ${ObjectType}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "FileName" = ${FileName}
            "Reason" = ${Reason}
            "RelayReason" = ${RelayReason}
            "RelayStatus" = ${RelayStatus}
            "RequestTs" = ${RequestTs}
            "Status" = ${Status}
            "TechsupportDownloadUrl" = ${TechsupportDownloadUrl}
            "ClusterMember" = ${ClusterMember}
            "DeviceRegistration" = ${DeviceRegistration}
            "OriginResource" = ${OriginResource}
            "TechSupportRequest" = ${TechSupportRequest}
        }

        return $PSO
    }

}

