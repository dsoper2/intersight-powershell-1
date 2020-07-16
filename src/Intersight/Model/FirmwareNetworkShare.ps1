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

Firmware upgrade where the image is located in remote shared machine.

.PARAMETER ObjectType
The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types.
.PARAMETER CifsServer
No description available.
.PARAMETER HttpServer
No description available.
.PARAMETER MapType
File server protocols such as CIFS, NFS, WWW for HTTP (S) that hosts the image.
.PARAMETER NfsServer
No description available.
.PARAMETER Password
Password as configured on the file server.
.PARAMETER Upgradeoption
Option to control the upgrade operation. Some examples, 1) nw_upgrade_mount_only - mount the image from a file server and run the upgrade on the next server boot and 2) nw_upgrade_full - mount the image and immediately run the upgrade.
.PARAMETER Username
Username as configured on the file server.
.OUTPUTS

FirmwareNetworkShare<PSCustomObject>
#>

function Initialize-IntersightFirmwareNetworkShare {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CifsServer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${HttpServer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("nfs", "cifs", "www")]
        [String]
        ${MapType} = "nfs",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NfsServer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("nw_upgrade_full", "nw_upgrade_mount_only")]
        [String]
        ${Upgradeoption} = "nw_upgrade_full",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFirmwareNetworkShare' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "ObjectType" = ${ObjectType}
            "CifsServer" = ${CifsServer}
            "HttpServer" = ${HttpServer}
            "MapType" = ${MapType}
            "NfsServer" = ${NfsServer}
            "Password" = ${Password}
            "Upgradeoption" = ${Upgradeoption}
            "Username" = ${Username}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FirmwareNetworkShare<PSCustomObject>

.DESCRIPTION

Convert from JSON to FirmwareNetworkShare<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FirmwareNetworkShare<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFirmwareNetworkShare {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFirmwareNetworkShare' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFirmwareNetworkShare
        $AllProperties = ("ClassId", "ObjectType", "CifsServer", "HttpServer", "IsPasswordSet", "MapType", "NfsServer", "Password", "Upgradeoption", "Username")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CifsServer"))) { #optional property not found
            $CifsServer = $null
        } else {
            $CifsServer = $JsonParameters.PSobject.Properties["CifsServer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HttpServer"))) { #optional property not found
            $HttpServer = $null
        } else {
            $HttpServer = $JsonParameters.PSobject.Properties["HttpServer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsPasswordSet"))) { #optional property not found
            $IsPasswordSet = $null
        } else {
            $IsPasswordSet = $JsonParameters.PSobject.Properties["IsPasswordSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MapType"))) { #optional property not found
            $MapType = $null
        } else {
            $MapType = $JsonParameters.PSobject.Properties["MapType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NfsServer"))) { #optional property not found
            $NfsServer = $null
        } else {
            $NfsServer = $JsonParameters.PSobject.Properties["NfsServer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["Password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Upgradeoption"))) { #optional property not found
            $Upgradeoption = $null
        } else {
            $Upgradeoption = $JsonParameters.PSobject.Properties["Upgradeoption"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["Username"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "CifsServer" = ${CifsServer}
            "HttpServer" = ${HttpServer}
            "IsPasswordSet" = ${IsPasswordSet}
            "MapType" = ${MapType}
            "NfsServer" = ${NfsServer}
            "Password" = ${Password}
            "Upgradeoption" = ${Upgradeoption}
            "Username" = ${Username}
        }

        return $PSO
    }

}
