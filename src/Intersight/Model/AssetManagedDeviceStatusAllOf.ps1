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

Definition of the list of properties defined in 'asset.ManagedDeviceStatus', excluding properties defined in parent classes.

.PARAMETER CloudPort
Port used for the connection to the Cloud by the Device Connector for the Managed Device.
.PARAMETER ConnectionFailureReason
Maintains the reason for the failure of connection to the Device in case of connection failure.
.PARAMETER ConnectionStatus
Maintains the status of the connection to the Device.
.PARAMETER ErrorCode
Maintains code related to error from Device Connector, if any.
.PARAMETER ErrorReason
Maintains the reason for the error from Device Connector, if any.
.PARAMETER ProcessId
Maintains the process pid of the Device Connector for the Managed Device.
.PARAMETER ServerPort
Port used for receiving requests from Intersight Assist by the Device Connector for the Managed Device.
.PARAMETER State
Maintains the state of the Managed Device, such as Start Success, Start Failure, etc. See ManagedDeviceState for device connection states.
.OUTPUTS

AssetManagedDeviceStatusAllOf<PSCustomObject>
#>

function Initialize-IntersightAssetManagedDeviceStatusAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${CloudPort},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectionFailureReason},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Unknown", "Success", "Failure")]
        [String]
        ${ConnectionStatus} = "Unknown",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ErrorCode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ErrorReason},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ProcessId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ServerPort},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("New", "StartSent", "StartSentFailure", "StartSuccess", "StartFailure", "UpdateSentFailure", "UpdateSent", "DeleteSentFailure", "DeleteInProgress", "DeleteFailure", "DeleteSuccess")]
        [String]
        ${State} = "New"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAssetManagedDeviceStatusAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "CloudPort" = ${CloudPort}
            "ConnectionFailureReason" = ${ConnectionFailureReason}
            "ConnectionStatus" = ${ConnectionStatus}
            "ErrorCode" = ${ErrorCode}
            "ErrorReason" = ${ErrorReason}
            "ProcessId" = ${ProcessId}
            "ServerPort" = ${ServerPort}
            "State" = ${State}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AssetManagedDeviceStatusAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AssetManagedDeviceStatusAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AssetManagedDeviceStatusAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAssetManagedDeviceStatusAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAssetManagedDeviceStatusAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAssetManagedDeviceStatusAllOf
        $AllProperties = ("CloudPort", "ConnectionFailureReason", "ConnectionStatus", "ErrorCode", "ErrorReason", "ProcessId", "ServerPort", "State")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CloudPort"))) { #optional property not found
            $CloudPort = $null
        } else {
            $CloudPort = $JsonParameters.PSobject.Properties["CloudPort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectionFailureReason"))) { #optional property not found
            $ConnectionFailureReason = $null
        } else {
            $ConnectionFailureReason = $JsonParameters.PSobject.Properties["ConnectionFailureReason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectionStatus"))) { #optional property not found
            $ConnectionStatus = $null
        } else {
            $ConnectionStatus = $JsonParameters.PSobject.Properties["ConnectionStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ErrorCode"))) { #optional property not found
            $ErrorCode = $null
        } else {
            $ErrorCode = $JsonParameters.PSobject.Properties["ErrorCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ErrorReason"))) { #optional property not found
            $ErrorReason = $null
        } else {
            $ErrorReason = $JsonParameters.PSobject.Properties["ErrorReason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProcessId"))) { #optional property not found
            $ProcessId = $null
        } else {
            $ProcessId = $JsonParameters.PSobject.Properties["ProcessId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ServerPort"))) { #optional property not found
            $ServerPort = $null
        } else {
            $ServerPort = $JsonParameters.PSobject.Properties["ServerPort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "State"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["State"].value
        }

        $PSO = [PSCustomObject]@{
            "CloudPort" = ${CloudPort}
            "ConnectionFailureReason" = ${ConnectionFailureReason}
            "ConnectionStatus" = ${ConnectionStatus}
            "ErrorCode" = ${ErrorCode}
            "ErrorReason" = ${ErrorReason}
            "ProcessId" = ${ProcessId}
            "ServerPort" = ${ServerPort}
            "State" = ${State}
        }

        return $PSO
    }

}

