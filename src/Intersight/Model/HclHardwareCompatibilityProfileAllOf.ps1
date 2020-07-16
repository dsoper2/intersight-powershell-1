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

Definition of the list of properties defined in 'hcl.HardwareCompatibilityProfile', excluding properties defined in parent classes.

.PARAMETER DriverIsoUrl
Url for the ISO with the drivers supported for the server.
.PARAMETER Id
Identifier of the hardware compatibility profile.
.PARAMETER OsVendor
Vendor of the Operating System running on the server.
.PARAMETER OsVersion
Version of the Operating System running on the server.
.PARAMETER ProcessorModel
Model of the processor present in the server.
.PARAMETER Products
No description available.
.PARAMETER ServerModel
Model of the server as returned by UCSM/CIMC XML API.
.PARAMETER ServerRevision
Revision of the server model.
.PARAMETER UcsVersion
Version of the UCS software.
.PARAMETER VersionType
Type of the UCS version indicating whether it is a UCSM release vesion or a IMC release.
.OUTPUTS

HclHardwareCompatibilityProfileAllOf<PSCustomObject>
#>

function Initialize-IntersightHclHardwareCompatibilityProfileAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DriverIsoUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsVendor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProcessorModel},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Products},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerModel},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerRevision},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UcsVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("UCSM", "IMC")]
        [String]
        ${VersionType} = "UCSM"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHclHardwareCompatibilityProfileAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "DriverIsoUrl" = ${DriverIsoUrl}
            "Id" = ${Id}
            "OsVendor" = ${OsVendor}
            "OsVersion" = ${OsVersion}
            "ProcessorModel" = ${ProcessorModel}
            "Products" = ${Products}
            "ServerModel" = ${ServerModel}
            "ServerRevision" = ${ServerRevision}
            "UcsVersion" = ${UcsVersion}
            "VersionType" = ${VersionType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HclHardwareCompatibilityProfileAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HclHardwareCompatibilityProfileAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HclHardwareCompatibilityProfileAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHclHardwareCompatibilityProfileAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHclHardwareCompatibilityProfileAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHclHardwareCompatibilityProfileAllOf
        $AllProperties = ("DriverIsoUrl", "ErrorCode", "Id", "OsVendor", "OsVersion", "ProcessorModel", "Products", "ServerModel", "ServerRevision", "UcsVersion", "VersionType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DriverIsoUrl"))) { #optional property not found
            $DriverIsoUrl = $null
        } else {
            $DriverIsoUrl = $JsonParameters.PSobject.Properties["DriverIsoUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ErrorCode"))) { #optional property not found
            $ErrorCode = $null
        } else {
            $ErrorCode = $JsonParameters.PSobject.Properties["ErrorCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["Id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OsVendor"))) { #optional property not found
            $OsVendor = $null
        } else {
            $OsVendor = $JsonParameters.PSobject.Properties["OsVendor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OsVersion"))) { #optional property not found
            $OsVersion = $null
        } else {
            $OsVersion = $JsonParameters.PSobject.Properties["OsVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProcessorModel"))) { #optional property not found
            $ProcessorModel = $null
        } else {
            $ProcessorModel = $JsonParameters.PSobject.Properties["ProcessorModel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Products"))) { #optional property not found
            $Products = $null
        } else {
            $Products = $JsonParameters.PSobject.Properties["Products"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ServerModel"))) { #optional property not found
            $ServerModel = $null
        } else {
            $ServerModel = $JsonParameters.PSobject.Properties["ServerModel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ServerRevision"))) { #optional property not found
            $ServerRevision = $null
        } else {
            $ServerRevision = $JsonParameters.PSobject.Properties["ServerRevision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UcsVersion"))) { #optional property not found
            $UcsVersion = $null
        } else {
            $UcsVersion = $JsonParameters.PSobject.Properties["UcsVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionType"))) { #optional property not found
            $VersionType = $null
        } else {
            $VersionType = $JsonParameters.PSobject.Properties["VersionType"].value
        }

        $PSO = [PSCustomObject]@{
            "DriverIsoUrl" = ${DriverIsoUrl}
            "ErrorCode" = ${ErrorCode}
            "Id" = ${Id}
            "OsVendor" = ${OsVendor}
            "OsVersion" = ${OsVersion}
            "ProcessorModel" = ${ProcessorModel}
            "Products" = ${Products}
            "ServerModel" = ${ServerModel}
            "ServerRevision" = ${ServerRevision}
            "UcsVersion" = ${UcsVersion}
            "VersionType" = ${VersionType}
        }

        return $PSO
    }

}
