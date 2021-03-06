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

Impact for the Fabric Interconnect endpoint during the upgrade operation.

.PARAMETER ObjectType
The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types.
.PARAMETER ComputationError
Details for the error that occurred during the reboot validation analysis.
.PARAMETER ComputationStatusDetail
The computation status of the estimate operation for a component.
.PARAMETER DomainName
The endpoint type or name.
.PARAMETER EndPoint
A reference to a REST resource, uniquely identified by object type and MOID.
.PARAMETER FirmwareVersion
The current firmware version of the component.
.PARAMETER ImpactType
The impact type of the endpoint, whether a reboot is required or not.
.PARAMETER Model
The model details of the component.
.PARAMETER TargetFirmwareVersion
The target firmware version of the component.
.PARAMETER VersionImpact
The change of version impact for the endpoint.
.PARAMETER ImpactDetail
No description available.
.PARAMETER Serial
Details for the Fabric Interconnect that will be impacted by the upgrade.
.OUTPUTS

FirmwareFabricUpgradeImpact<PSCustomObject>
#>

function Initialize-IntersightFirmwareFabricUpgradeImpact {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ComputationError},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Inprogress", "Completed", "Unavailable", "Failed")]
        [String]
        ${ComputationStatusDetail} = "Inprogress",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DomainName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EndPoint},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirmwareVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("NoReboot", "Reboot")]
        [String]
        ${ImpactType} = "NoReboot",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Model},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TargetFirmwareVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "Upgrade", "Downgrade")]
        [String]
        ${VersionImpact} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ImpactDetail},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Serial}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFirmwareFabricUpgradeImpact' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "ObjectType" = ${ObjectType}
            "ComputationError" = ${ComputationError}
            "ComputationStatusDetail" = ${ComputationStatusDetail}
            "DomainName" = ${DomainName}
            "EndPoint" = ${EndPoint}
            "FirmwareVersion" = ${FirmwareVersion}
            "ImpactType" = ${ImpactType}
            "Model" = ${Model}
            "TargetFirmwareVersion" = ${TargetFirmwareVersion}
            "VersionImpact" = ${VersionImpact}
            "ImpactDetail" = ${ImpactDetail}
            "Serial" = ${Serial}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FirmwareFabricUpgradeImpact<PSCustomObject>

.DESCRIPTION

Convert from JSON to FirmwareFabricUpgradeImpact<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FirmwareFabricUpgradeImpact<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFirmwareFabricUpgradeImpact {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFirmwareFabricUpgradeImpact' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFirmwareFabricUpgradeImpact
        $AllProperties = ("ClassId", "ObjectType", "ComputationError", "ComputationStatusDetail", "DomainName", "EndPoint", "FirmwareVersion", "ImpactType", "Model", "TargetFirmwareVersion", "VersionImpact", "ImpactDetail", "Serial")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputationError"))) { #optional property not found
            $ComputationError = $null
        } else {
            $ComputationError = $JsonParameters.PSobject.Properties["ComputationError"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputationStatusDetail"))) { #optional property not found
            $ComputationStatusDetail = $null
        } else {
            $ComputationStatusDetail = $JsonParameters.PSobject.Properties["ComputationStatusDetail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainName"))) { #optional property not found
            $DomainName = $null
        } else {
            $DomainName = $JsonParameters.PSobject.Properties["DomainName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndPoint"))) { #optional property not found
            $EndPoint = $null
        } else {
            $EndPoint = $JsonParameters.PSobject.Properties["EndPoint"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FirmwareVersion"))) { #optional property not found
            $FirmwareVersion = $null
        } else {
            $FirmwareVersion = $JsonParameters.PSobject.Properties["FirmwareVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ImpactType"))) { #optional property not found
            $ImpactType = $null
        } else {
            $ImpactType = $JsonParameters.PSobject.Properties["ImpactType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Model"))) { #optional property not found
            $Model = $null
        } else {
            $Model = $JsonParameters.PSobject.Properties["Model"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TargetFirmwareVersion"))) { #optional property not found
            $TargetFirmwareVersion = $null
        } else {
            $TargetFirmwareVersion = $JsonParameters.PSobject.Properties["TargetFirmwareVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionImpact"))) { #optional property not found
            $VersionImpact = $null
        } else {
            $VersionImpact = $JsonParameters.PSobject.Properties["VersionImpact"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ImpactDetail"))) { #optional property not found
            $ImpactDetail = $null
        } else {
            $ImpactDetail = $JsonParameters.PSobject.Properties["ImpactDetail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Serial"))) { #optional property not found
            $Serial = $null
        } else {
            $Serial = $JsonParameters.PSobject.Properties["Serial"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "ComputationError" = ${ComputationError}
            "ComputationStatusDetail" = ${ComputationStatusDetail}
            "DomainName" = ${DomainName}
            "EndPoint" = ${EndPoint}
            "FirmwareVersion" = ${FirmwareVersion}
            "ImpactType" = ${ImpactType}
            "Model" = ${Model}
            "TargetFirmwareVersion" = ${TargetFirmwareVersion}
            "VersionImpact" = ${VersionImpact}
            "ImpactDetail" = ${ImpactDetail}
            "Serial" = ${Serial}
        }

        return $PSO
    }

}

