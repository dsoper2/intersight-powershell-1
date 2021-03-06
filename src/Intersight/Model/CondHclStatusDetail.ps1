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

The HCL status detail for each component firmware and driver.

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
.PARAMETER HardwareStatus
The model is considered as part of the hardware profile for the component. This will provide the HCL validation status for the hardware profile. The reasons can be one of the following ""Incompatible-Server-With-Component"" - the server model and component combination is not listed in HCL ""Incompatible-Firmware"" - The server's firmware is not listed for this component's hardware profile ""Incompatible-Component"" - the component's model is not listed in the HCL ""Service-Unavailable"" - HCL data service is unavailable at the moment (try again later). This could be due to HCL data updating ""Not-Evaluated"" - the hardware profile was not evaulated for the component because the server's hw/sw status is not listed or server is exempted. ""Compatible"" - this component's hardware profile is listed in the HCL.
.PARAMETER HclCimcVersion
The current CIMC version for the server normalized for querying HCL data.
.PARAMETER HclDriverName
The current driver name of the component we are validating normalized for querying HCL data.
.PARAMETER HclDriverVersion
The current driver version of the component we are validating normalized for querying HCL data.
.PARAMETER HclFirmwareVersion
The current firmware version of the component model normalized for querying HCL data.
.PARAMETER HclModel
The component model we are trying to validate normalized for querying HCL data.
.PARAMETER InvCimcVersion
The current CIMC version for the server as received from inventory.
.PARAMETER InvDriverName
The current driver name of the component we are validating as received from inventory.
.PARAMETER InvDriverVersion
The current driver version of the component we are validating as received from inventory.
.PARAMETER InvFirmwareVersion
The current firmware version of the component model as received from inventory.
.PARAMETER InvModel
The component model we are trying to validate as received from inventory.
.PARAMETER Reason
The reason for the status. The reason can be one of ""Incompatible-Server-With-Component"" - HCL validation has failed because the server model is not validated with this component ""Incompatible-Processor"" - HCL validation has failed because the processor is not validated with this server ""Incompatible-Os-Info"" - HCL validation has failed because the os vendor and version is not validated with this server ""Incompatible-Component-Model"" - HCL validation has failed because the component model is not validated ""Incompatible-Firmware"" - HCL validation has failed because the component or server firmware version is not validated ""Incompatible-Driver"" - HCL validation has failed because the driver version is not validated ""Incompatible-Firmware-Driver"" - HCL validation has failed because the firmware version and driver version is not validated ""Missing-Os-Driver-Info"" - HCL validation was not performed because we are missing os driver information form the inventory ""Service-Unavailable"" - HCL data service is unavailable at the moment (try again later). This could be due to HCL data updating ""Service-Error"" - HCL data service is available but an error occured when making the request or parsing the response ""Unrecognized-Protocol"" - This service does not recognize the reason code in the response from the HCL data service ""Compatible"" - this component's inventory data has ""Validated"" status with the HCL. ""Not-Evaluated"" - The component is not evaluated against the HCL because the server is exempted.
.PARAMETER SoftwareStatus
The firmware, driver name and driver version are considered as part of the software profile for the component. This will provide the HCL validation status for the software profile. The reasons can be one of the following ""Incompatible-Firmware"" - the component's firmware is not listed under the server's hardware and software profile and the component's hardware profile ""Incompatible-Driver"" - the component's driver is not listed under the server's hardware and software profile and the component's hardware profile ""Incompatible-Firmware-Driver"" - the component's firmware and driver are not listed under the server's hardware and software profile and the component's hardware profile ""Service-Unavailable"" - HCL data service is unavailable at the moment (try again later). This could be due to HCL data updating ""Not-Evaluated"" - the component's hardware status was not evaluated because the server's hardware or software profile is not listed or server is exempted. ""Compatible"" - this component's hardware profile is listed in the HCL.
.PARAMETER Status
The status for the component model, firmware version, driver name, and driver version after validating against the HCL. The status can be one of the following ""Unknown"" - we do not have enough information to evaluate against the HCL data ""Validated"" - we have validated this component against the HCL and it has ""Validated"" status ""Not-Validated"" - we have validated this component against the HCL and it has ""Not-Validated"" status. ""Not-Evaluated"" - The component is not evaluated against the HCL because the server is exempted.
.PARAMETER Component
No description available.
.PARAMETER HclStatus
No description available.
.OUTPUTS

CondHclStatusDetail<PSCustomObject>
#>

function Initialize-IntersightCondHclStatusDetail {
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
        [ValidateSet("Missing-Os-Driver-Info", "Incompatible-Server-With-Component", "Incompatible-Processor", "Incompatible-Os-Info", "Incompatible-Component-Model", "Incompatible-Firmware", "Incompatible-Driver", "Incompatible-Firmware-Driver", "Service-Unavailable", "Service-Error", "Unrecognized-Protocol", "Not-Evaluated", "Compatible")]
        [String]
        ${HardwareStatus} = "Missing-Os-Driver-Info",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HclCimcVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HclDriverName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HclDriverVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HclFirmwareVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HclModel},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InvCimcVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InvDriverName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InvDriverVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InvFirmwareVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InvModel},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Missing-Os-Driver-Info", "Incompatible-Server-With-Component", "Incompatible-Processor", "Incompatible-Os-Info", "Incompatible-Component-Model", "Incompatible-Firmware", "Incompatible-Driver", "Incompatible-Firmware-Driver", "Service-Unavailable", "Service-Error", "Unrecognized-Protocol", "Not-Evaluated", "Compatible")]
        [String]
        ${Reason} = "Missing-Os-Driver-Info",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Missing-Os-Driver-Info", "Incompatible-Server-With-Component", "Incompatible-Processor", "Incompatible-Os-Info", "Incompatible-Component-Model", "Incompatible-Firmware", "Incompatible-Driver", "Incompatible-Firmware-Driver", "Service-Unavailable", "Service-Error", "Unrecognized-Protocol", "Not-Evaluated", "Compatible")]
        [String]
        ${SoftwareStatus} = "Missing-Os-Driver-Info",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Incomplete", "Not-Found", "Not-Listed", "Validated", "Not-Evaluated")]
        [String]
        ${Status} = "Incomplete",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Component},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${HclStatus}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightCondHclStatusDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "HardwareStatus" = ${HardwareStatus}
            "HclCimcVersion" = ${HclCimcVersion}
            "HclDriverName" = ${HclDriverName}
            "HclDriverVersion" = ${HclDriverVersion}
            "HclFirmwareVersion" = ${HclFirmwareVersion}
            "HclModel" = ${HclModel}
            "InvCimcVersion" = ${InvCimcVersion}
            "InvDriverName" = ${InvDriverName}
            "InvDriverVersion" = ${InvDriverVersion}
            "InvFirmwareVersion" = ${InvFirmwareVersion}
            "InvModel" = ${InvModel}
            "Reason" = ${Reason}
            "SoftwareStatus" = ${SoftwareStatus}
            "Status" = ${Status}
            "Component" = ${Component}
            "HclStatus" = ${HclStatus}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CondHclStatusDetail<PSCustomObject>

.DESCRIPTION

Convert from JSON to CondHclStatusDetail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CondHclStatusDetail<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToCondHclStatusDetail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightCondHclStatusDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightCondHclStatusDetail
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "HardwareStatus", "HclCimcVersion", "HclDriverName", "HclDriverVersion", "HclFirmwareVersion", "HclModel", "InvCimcVersion", "InvDriverName", "InvDriverVersion", "InvFirmwareVersion", "InvModel", "Reason", "SoftwareStatus", "Status", "Component", "HclStatus")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HardwareStatus"))) { #optional property not found
            $HardwareStatus = $null
        } else {
            $HardwareStatus = $JsonParameters.PSobject.Properties["HardwareStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HclCimcVersion"))) { #optional property not found
            $HclCimcVersion = $null
        } else {
            $HclCimcVersion = $JsonParameters.PSobject.Properties["HclCimcVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HclDriverName"))) { #optional property not found
            $HclDriverName = $null
        } else {
            $HclDriverName = $JsonParameters.PSobject.Properties["HclDriverName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HclDriverVersion"))) { #optional property not found
            $HclDriverVersion = $null
        } else {
            $HclDriverVersion = $JsonParameters.PSobject.Properties["HclDriverVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HclFirmwareVersion"))) { #optional property not found
            $HclFirmwareVersion = $null
        } else {
            $HclFirmwareVersion = $JsonParameters.PSobject.Properties["HclFirmwareVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HclModel"))) { #optional property not found
            $HclModel = $null
        } else {
            $HclModel = $JsonParameters.PSobject.Properties["HclModel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InvCimcVersion"))) { #optional property not found
            $InvCimcVersion = $null
        } else {
            $InvCimcVersion = $JsonParameters.PSobject.Properties["InvCimcVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InvDriverName"))) { #optional property not found
            $InvDriverName = $null
        } else {
            $InvDriverName = $JsonParameters.PSobject.Properties["InvDriverName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InvDriverVersion"))) { #optional property not found
            $InvDriverVersion = $null
        } else {
            $InvDriverVersion = $JsonParameters.PSobject.Properties["InvDriverVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InvFirmwareVersion"))) { #optional property not found
            $InvFirmwareVersion = $null
        } else {
            $InvFirmwareVersion = $JsonParameters.PSobject.Properties["InvFirmwareVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InvModel"))) { #optional property not found
            $InvModel = $null
        } else {
            $InvModel = $JsonParameters.PSobject.Properties["InvModel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Reason"))) { #optional property not found
            $Reason = $null
        } else {
            $Reason = $JsonParameters.PSobject.Properties["Reason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SoftwareStatus"))) { #optional property not found
            $SoftwareStatus = $null
        } else {
            $SoftwareStatus = $JsonParameters.PSobject.Properties["SoftwareStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Component"))) { #optional property not found
            $Component = $null
        } else {
            $Component = $JsonParameters.PSobject.Properties["Component"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HclStatus"))) { #optional property not found
            $HclStatus = $null
        } else {
            $HclStatus = $JsonParameters.PSobject.Properties["HclStatus"].value
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
            "HardwareStatus" = ${HardwareStatus}
            "HclCimcVersion" = ${HclCimcVersion}
            "HclDriverName" = ${HclDriverName}
            "HclDriverVersion" = ${HclDriverVersion}
            "HclFirmwareVersion" = ${HclFirmwareVersion}
            "HclModel" = ${HclModel}
            "InvCimcVersion" = ${InvCimcVersion}
            "InvDriverName" = ${InvDriverName}
            "InvDriverVersion" = ${InvDriverVersion}
            "InvFirmwareVersion" = ${InvFirmwareVersion}
            "InvModel" = ${InvModel}
            "Reason" = ${Reason}
            "SoftwareStatus" = ${SoftwareStatus}
            "Status" = ${Status}
            "Component" = ${Component}
            "HclStatus" = ${HclStatus}
        }

        return $PSO
    }

}

