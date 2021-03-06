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

The user's local machine that is being used as the source for an image.

.PARAMETER ObjectType
The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types.
.PARAMETER PartSize
The chunk size (in bytes) for each part of the file to be uploaded.
.PARAMETER UploadId
When the import action in file MO is updated with 'GeneratePreSignedUploadUrl', Intersight shall return a upload Id in this property as part of the PATCH response.
.PARAMETER UploadUrls
No description available.
.OUTPUTS

SoftwarerepositoryLocalMachine<PSCustomObject>
#>

function Initialize-IntersightSoftwarerepositoryLocalMachine {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PartSize},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UploadId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${UploadUrls}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightSoftwarerepositoryLocalMachine' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "ObjectType" = ${ObjectType}
            "PartSize" = ${PartSize}
            "UploadId" = ${UploadId}
            "UploadUrls" = ${UploadUrls}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SoftwarerepositoryLocalMachine<PSCustomObject>

.DESCRIPTION

Convert from JSON to SoftwarerepositoryLocalMachine<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SoftwarerepositoryLocalMachine<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToSoftwarerepositoryLocalMachine {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightSoftwarerepositoryLocalMachine' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightSoftwarerepositoryLocalMachine
        $AllProperties = ("ClassId", "ObjectType", "DownloadUrl", "PartSize", "UploadId", "UploadUrl", "UploadUrls")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DownloadUrl"))) { #optional property not found
            $DownloadUrl = $null
        } else {
            $DownloadUrl = $JsonParameters.PSobject.Properties["DownloadUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PartSize"))) { #optional property not found
            $PartSize = $null
        } else {
            $PartSize = $JsonParameters.PSobject.Properties["PartSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UploadId"))) { #optional property not found
            $UploadId = $null
        } else {
            $UploadId = $JsonParameters.PSobject.Properties["UploadId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UploadUrl"))) { #optional property not found
            $UploadUrl = $null
        } else {
            $UploadUrl = $JsonParameters.PSobject.Properties["UploadUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UploadUrls"))) { #optional property not found
            $UploadUrls = $null
        } else {
            $UploadUrls = $JsonParameters.PSobject.Properties["UploadUrls"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "DownloadUrl" = ${DownloadUrl}
            "PartSize" = ${PartSize}
            "UploadId" = ${UploadId}
            "UploadUrl" = ${UploadUrl}
            "UploadUrls" = ${UploadUrls}
        }

        return $PSO
    }

}

