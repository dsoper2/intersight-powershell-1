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

This contains the end of life notice of hardware.

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
.PARAMETER AffectedPids
String contains the PID of hardwares affected by this notice, seperated by comma.
.PARAMETER AnnouncementDate
When this notice is announced.
.PARAMETER AnnouncementDateEpoch
Epoch time of Announcement Date.
.PARAMETER BulletinNo
The bulletinno of this hardware end of life notice.
.PARAMETER Description
The description of this hardware end of life notice.
.PARAMETER EndofNewServiceAttachmentDate
Date time of end of new services attachment  .
.PARAMETER EndofNewServiceAttachmentDateEpoch
Epoch time of New service attachment Date .
.PARAMETER EndofRoutineFailureAnalysisDate
Date time of end of routinefailure analysis.
.PARAMETER EndofRoutineFailureAnalysisDateEpoch
Epoch time of End of Routine Failure Analysis Date.
.PARAMETER EndofSaleDate
When this hardware will end sale.
.PARAMETER EndofSaleDateEpoch
Epoch time of End of Sale Date.
.PARAMETER EndofSecuritySupport
Date time of end of security support .
.PARAMETER EndofSecuritySupportEpoch
Epoch time of End of Security Support Date .
.PARAMETER EndofServiceContractRenewalDate
Date time of end of service contract renew .
.PARAMETER EndofServiceContractRenewalDateEpoch
Epoch time of End of Renewal service contract.
.PARAMETER EndofSwMaintenanceDate
The date of end of maintainance.
.PARAMETER EndofSwMaintenanceDateEpoch
Epoch time of End of maintenance Date.
.PARAMETER HardwareEolUrl
Hardware end of sale URL link to the notice webpage.
.PARAMETER Headline
The title of this hardware end of life notice.
.PARAMETER LastDateofSupport
Date time of end of support .
.PARAMETER LastDateofSupportEpoch
Epoch time of last date of support .
.PARAMETER LastShipDate
Date time of Lastship Date.
.PARAMETER LastShipDateEpoch
Epoch time of last ship Date.
.PARAMETER MigrationUrl
The URL of this migration notice.
.OUTPUTS

NiaapiHardwareEol<PSCustomObject>
#>

function Initialize-IntersightNiaapiHardwareEol {
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
        ${AffectedPids},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${AnnouncementDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${AnnouncementDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BulletinNo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndofNewServiceAttachmentDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EndofNewServiceAttachmentDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndofRoutineFailureAnalysisDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EndofRoutineFailureAnalysisDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndofSaleDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EndofSaleDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndofSecuritySupport},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EndofSecuritySupportEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndofServiceContractRenewalDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EndofServiceContractRenewalDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndofSwMaintenanceDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EndofSwMaintenanceDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HardwareEolUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Headline},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastDateofSupport},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${LastDateofSupportEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastShipDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${LastShipDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MigrationUrl}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightNiaapiHardwareEol' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "AffectedPids" = ${AffectedPids}
            "AnnouncementDate" = ${AnnouncementDate}
            "AnnouncementDateEpoch" = ${AnnouncementDateEpoch}
            "BulletinNo" = ${BulletinNo}
            "Description" = ${Description}
            "EndofNewServiceAttachmentDate" = ${EndofNewServiceAttachmentDate}
            "EndofNewServiceAttachmentDateEpoch" = ${EndofNewServiceAttachmentDateEpoch}
            "EndofRoutineFailureAnalysisDate" = ${EndofRoutineFailureAnalysisDate}
            "EndofRoutineFailureAnalysisDateEpoch" = ${EndofRoutineFailureAnalysisDateEpoch}
            "EndofSaleDate" = ${EndofSaleDate}
            "EndofSaleDateEpoch" = ${EndofSaleDateEpoch}
            "EndofSecuritySupport" = ${EndofSecuritySupport}
            "EndofSecuritySupportEpoch" = ${EndofSecuritySupportEpoch}
            "EndofServiceContractRenewalDate" = ${EndofServiceContractRenewalDate}
            "EndofServiceContractRenewalDateEpoch" = ${EndofServiceContractRenewalDateEpoch}
            "EndofSwMaintenanceDate" = ${EndofSwMaintenanceDate}
            "EndofSwMaintenanceDateEpoch" = ${EndofSwMaintenanceDateEpoch}
            "HardwareEolUrl" = ${HardwareEolUrl}
            "Headline" = ${Headline}
            "LastDateofSupport" = ${LastDateofSupport}
            "LastDateofSupportEpoch" = ${LastDateofSupportEpoch}
            "LastShipDate" = ${LastShipDate}
            "LastShipDateEpoch" = ${LastShipDateEpoch}
            "MigrationUrl" = ${MigrationUrl}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NiaapiHardwareEol<PSCustomObject>

.DESCRIPTION

Convert from JSON to NiaapiHardwareEol<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NiaapiHardwareEol<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToNiaapiHardwareEol {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightNiaapiHardwareEol' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightNiaapiHardwareEol
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "AffectedPids", "AnnouncementDate", "AnnouncementDateEpoch", "BulletinNo", "Description", "EndofNewServiceAttachmentDate", "EndofNewServiceAttachmentDateEpoch", "EndofRoutineFailureAnalysisDate", "EndofRoutineFailureAnalysisDateEpoch", "EndofSaleDate", "EndofSaleDateEpoch", "EndofSecuritySupport", "EndofSecuritySupportEpoch", "EndofServiceContractRenewalDate", "EndofServiceContractRenewalDateEpoch", "EndofSwMaintenanceDate", "EndofSwMaintenanceDateEpoch", "HardwareEolUrl", "Headline", "LastDateofSupport", "LastDateofSupportEpoch", "LastShipDate", "LastShipDateEpoch", "MigrationUrl")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AffectedPids"))) { #optional property not found
            $AffectedPids = $null
        } else {
            $AffectedPids = $JsonParameters.PSobject.Properties["AffectedPids"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AnnouncementDate"))) { #optional property not found
            $AnnouncementDate = $null
        } else {
            $AnnouncementDate = $JsonParameters.PSobject.Properties["AnnouncementDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AnnouncementDateEpoch"))) { #optional property not found
            $AnnouncementDateEpoch = $null
        } else {
            $AnnouncementDateEpoch = $JsonParameters.PSobject.Properties["AnnouncementDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BulletinNo"))) { #optional property not found
            $BulletinNo = $null
        } else {
            $BulletinNo = $JsonParameters.PSobject.Properties["BulletinNo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofNewServiceAttachmentDate"))) { #optional property not found
            $EndofNewServiceAttachmentDate = $null
        } else {
            $EndofNewServiceAttachmentDate = $JsonParameters.PSobject.Properties["EndofNewServiceAttachmentDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofNewServiceAttachmentDateEpoch"))) { #optional property not found
            $EndofNewServiceAttachmentDateEpoch = $null
        } else {
            $EndofNewServiceAttachmentDateEpoch = $JsonParameters.PSobject.Properties["EndofNewServiceAttachmentDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofRoutineFailureAnalysisDate"))) { #optional property not found
            $EndofRoutineFailureAnalysisDate = $null
        } else {
            $EndofRoutineFailureAnalysisDate = $JsonParameters.PSobject.Properties["EndofRoutineFailureAnalysisDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofRoutineFailureAnalysisDateEpoch"))) { #optional property not found
            $EndofRoutineFailureAnalysisDateEpoch = $null
        } else {
            $EndofRoutineFailureAnalysisDateEpoch = $JsonParameters.PSobject.Properties["EndofRoutineFailureAnalysisDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofSaleDate"))) { #optional property not found
            $EndofSaleDate = $null
        } else {
            $EndofSaleDate = $JsonParameters.PSobject.Properties["EndofSaleDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofSaleDateEpoch"))) { #optional property not found
            $EndofSaleDateEpoch = $null
        } else {
            $EndofSaleDateEpoch = $JsonParameters.PSobject.Properties["EndofSaleDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofSecuritySupport"))) { #optional property not found
            $EndofSecuritySupport = $null
        } else {
            $EndofSecuritySupport = $JsonParameters.PSobject.Properties["EndofSecuritySupport"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofSecuritySupportEpoch"))) { #optional property not found
            $EndofSecuritySupportEpoch = $null
        } else {
            $EndofSecuritySupportEpoch = $JsonParameters.PSobject.Properties["EndofSecuritySupportEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofServiceContractRenewalDate"))) { #optional property not found
            $EndofServiceContractRenewalDate = $null
        } else {
            $EndofServiceContractRenewalDate = $JsonParameters.PSobject.Properties["EndofServiceContractRenewalDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofServiceContractRenewalDateEpoch"))) { #optional property not found
            $EndofServiceContractRenewalDateEpoch = $null
        } else {
            $EndofServiceContractRenewalDateEpoch = $JsonParameters.PSobject.Properties["EndofServiceContractRenewalDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofSwMaintenanceDate"))) { #optional property not found
            $EndofSwMaintenanceDate = $null
        } else {
            $EndofSwMaintenanceDate = $JsonParameters.PSobject.Properties["EndofSwMaintenanceDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofSwMaintenanceDateEpoch"))) { #optional property not found
            $EndofSwMaintenanceDateEpoch = $null
        } else {
            $EndofSwMaintenanceDateEpoch = $JsonParameters.PSobject.Properties["EndofSwMaintenanceDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HardwareEolUrl"))) { #optional property not found
            $HardwareEolUrl = $null
        } else {
            $HardwareEolUrl = $JsonParameters.PSobject.Properties["HardwareEolUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Headline"))) { #optional property not found
            $Headline = $null
        } else {
            $Headline = $JsonParameters.PSobject.Properties["Headline"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastDateofSupport"))) { #optional property not found
            $LastDateofSupport = $null
        } else {
            $LastDateofSupport = $JsonParameters.PSobject.Properties["LastDateofSupport"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastDateofSupportEpoch"))) { #optional property not found
            $LastDateofSupportEpoch = $null
        } else {
            $LastDateofSupportEpoch = $JsonParameters.PSobject.Properties["LastDateofSupportEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastShipDate"))) { #optional property not found
            $LastShipDate = $null
        } else {
            $LastShipDate = $JsonParameters.PSobject.Properties["LastShipDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastShipDateEpoch"))) { #optional property not found
            $LastShipDateEpoch = $null
        } else {
            $LastShipDateEpoch = $JsonParameters.PSobject.Properties["LastShipDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MigrationUrl"))) { #optional property not found
            $MigrationUrl = $null
        } else {
            $MigrationUrl = $JsonParameters.PSobject.Properties["MigrationUrl"].value
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
            "AffectedPids" = ${AffectedPids}
            "AnnouncementDate" = ${AnnouncementDate}
            "AnnouncementDateEpoch" = ${AnnouncementDateEpoch}
            "BulletinNo" = ${BulletinNo}
            "Description" = ${Description}
            "EndofNewServiceAttachmentDate" = ${EndofNewServiceAttachmentDate}
            "EndofNewServiceAttachmentDateEpoch" = ${EndofNewServiceAttachmentDateEpoch}
            "EndofRoutineFailureAnalysisDate" = ${EndofRoutineFailureAnalysisDate}
            "EndofRoutineFailureAnalysisDateEpoch" = ${EndofRoutineFailureAnalysisDateEpoch}
            "EndofSaleDate" = ${EndofSaleDate}
            "EndofSaleDateEpoch" = ${EndofSaleDateEpoch}
            "EndofSecuritySupport" = ${EndofSecuritySupport}
            "EndofSecuritySupportEpoch" = ${EndofSecuritySupportEpoch}
            "EndofServiceContractRenewalDate" = ${EndofServiceContractRenewalDate}
            "EndofServiceContractRenewalDateEpoch" = ${EndofServiceContractRenewalDateEpoch}
            "EndofSwMaintenanceDate" = ${EndofSwMaintenanceDate}
            "EndofSwMaintenanceDateEpoch" = ${EndofSwMaintenanceDateEpoch}
            "HardwareEolUrl" = ${HardwareEolUrl}
            "Headline" = ${Headline}
            "LastDateofSupport" = ${LastDateofSupport}
            "LastDateofSupportEpoch" = ${LastDateofSupportEpoch}
            "LastShipDate" = ${LastShipDate}
            "LastShipDateEpoch" = ${LastShipDateEpoch}
            "MigrationUrl" = ${MigrationUrl}
        }

        return $PSO
    }

}

