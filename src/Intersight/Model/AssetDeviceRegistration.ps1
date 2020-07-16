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

DeviceRegistration represents a device connector enabled endpoint which has registered with Intersight.

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
.PARAMETER AccessKeyId
An identifier for the credential used by the device connector to authenticate with the Intersight web socket gateway.
.PARAMETER DeviceHostname
No description available.
.PARAMETER DeviceIpAddress
No description available.
.PARAMETER ExecutionMode
Indicates if the platform is an actual device or an emulated device for testing, demos, etc. Permitted values are [Normal, Emulator, ContainerEmulator].
.PARAMETER ParentSignature
No description available.
.PARAMETER VarPid
No description available.
.PARAMETER PlatformType
The platform type on which device connector is executing.
.PARAMETER Serial
No description available.
.PARAMETER Account
No description available.
.PARAMETER ClaimedByUser
No description available.
.PARAMETER DeviceClaim
No description available.
.PARAMETER DeviceConfiguration
No description available.
.PARAMETER DomainGroup
No description available.
.PARAMETER ParentConnection
No description available.
.OUTPUTS

AssetDeviceRegistration<PSCustomObject>
#>

function Initialize-IntersightAssetDeviceRegistration {
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
        ${AccessKeyId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DeviceHostname},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DeviceIpAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("", "Normal", "Emulator", "ContainerEmulator")]
        [String]
        ${ExecutionMode} = "",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ParentSignature},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${VarPid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("", "APIC", "DCNM", "UCSFI", "UCSFIISM", "IMC", "IMCM4", "IMCM5", "UCSIOM", "HX", "HyperFlexAP", "UCSD", "IntersightAppliance", "PureStorageFlashArray", "NetAppOntap", "EmcScaleIo", "EmcVmax", "EmcVplex", "EmcXtremIo", "VmwareVcenter", "MicrosoftHyperV", "AppDynamics", "Dynatrace", "MicrosoftSqlServer", "Kubernetes", "MicrosoftAzure", "ServiceEngine", "IMCBlade")]
        [String]
        ${PlatformType} = "",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Serial},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ClaimedByUser},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DeviceClaim},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DeviceConfiguration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DomainGroup},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ParentConnection}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAssetDeviceRegistration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "AccessKeyId" = ${AccessKeyId}
            "DeviceHostname" = ${DeviceHostname}
            "DeviceIpAddress" = ${DeviceIpAddress}
            "ExecutionMode" = ${ExecutionMode}
            "ParentSignature" = ${ParentSignature}
            "Pid" = ${VarPid}
            "PlatformType" = ${PlatformType}
            "Serial" = ${Serial}
            "Account" = ${Account}
            "ClaimedByUser" = ${ClaimedByUser}
            "DeviceClaim" = ${DeviceClaim}
            "DeviceConfiguration" = ${DeviceConfiguration}
            "DomainGroup" = ${DomainGroup}
            "ParentConnection" = ${ParentConnection}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AssetDeviceRegistration<PSCustomObject>

.DESCRIPTION

Convert from JSON to AssetDeviceRegistration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AssetDeviceRegistration<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAssetDeviceRegistration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAssetDeviceRegistration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAssetDeviceRegistration
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "ApiVersion", "AppPartitionNumber", "ConnectionId", "ConnectionReason", "ConnectionStatus", "ConnectionStatusLastChangeTime", "ConnectorVersion", "DeviceExternalIpAddress", "ProxyApp", "AccessKeyId", "ClaimedByUserName", "ClaimedTime", "DeviceHostname", "DeviceIpAddress", "ExecutionMode", "ParentSignature", "Pid", "PlatformType", "PublicAccessKey", "ReadOnly", "Serial", "Vendor", "Account", "ClaimedByUser", "ClusterMembers", "DeviceClaim", "DeviceConfiguration", "DomainGroup", "ParentConnection")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ApiVersion"))) { #optional property not found
            $ApiVersion = $null
        } else {
            $ApiVersion = $JsonParameters.PSobject.Properties["ApiVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AppPartitionNumber"))) { #optional property not found
            $AppPartitionNumber = $null
        } else {
            $AppPartitionNumber = $JsonParameters.PSobject.Properties["AppPartitionNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectionId"))) { #optional property not found
            $ConnectionId = $null
        } else {
            $ConnectionId = $JsonParameters.PSobject.Properties["ConnectionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectionReason"))) { #optional property not found
            $ConnectionReason = $null
        } else {
            $ConnectionReason = $JsonParameters.PSobject.Properties["ConnectionReason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectionStatus"))) { #optional property not found
            $ConnectionStatus = $null
        } else {
            $ConnectionStatus = $JsonParameters.PSobject.Properties["ConnectionStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectionStatusLastChangeTime"))) { #optional property not found
            $ConnectionStatusLastChangeTime = $null
        } else {
            $ConnectionStatusLastChangeTime = $JsonParameters.PSobject.Properties["ConnectionStatusLastChangeTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectorVersion"))) { #optional property not found
            $ConnectorVersion = $null
        } else {
            $ConnectorVersion = $JsonParameters.PSobject.Properties["ConnectorVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceExternalIpAddress"))) { #optional property not found
            $DeviceExternalIpAddress = $null
        } else {
            $DeviceExternalIpAddress = $JsonParameters.PSobject.Properties["DeviceExternalIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProxyApp"))) { #optional property not found
            $ProxyApp = $null
        } else {
            $ProxyApp = $JsonParameters.PSobject.Properties["ProxyApp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccessKeyId"))) { #optional property not found
            $AccessKeyId = $null
        } else {
            $AccessKeyId = $JsonParameters.PSobject.Properties["AccessKeyId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClaimedByUserName"))) { #optional property not found
            $ClaimedByUserName = $null
        } else {
            $ClaimedByUserName = $JsonParameters.PSobject.Properties["ClaimedByUserName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClaimedTime"))) { #optional property not found
            $ClaimedTime = $null
        } else {
            $ClaimedTime = $JsonParameters.PSobject.Properties["ClaimedTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceHostname"))) { #optional property not found
            $DeviceHostname = $null
        } else {
            $DeviceHostname = $JsonParameters.PSobject.Properties["DeviceHostname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceIpAddress"))) { #optional property not found
            $DeviceIpAddress = $null
        } else {
            $DeviceIpAddress = $JsonParameters.PSobject.Properties["DeviceIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExecutionMode"))) { #optional property not found
            $ExecutionMode = $null
        } else {
            $ExecutionMode = $JsonParameters.PSobject.Properties["ExecutionMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ParentSignature"))) { #optional property not found
            $ParentSignature = $null
        } else {
            $ParentSignature = $JsonParameters.PSobject.Properties["ParentSignature"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Pid"))) { #optional property not found
            $VarPid = $null
        } else {
            $VarPid = $JsonParameters.PSobject.Properties["Pid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PlatformType"))) { #optional property not found
            $PlatformType = $null
        } else {
            $PlatformType = $JsonParameters.PSobject.Properties["PlatformType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PublicAccessKey"))) { #optional property not found
            $PublicAccessKey = $null
        } else {
            $PublicAccessKey = $JsonParameters.PSobject.Properties["PublicAccessKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReadOnly"))) { #optional property not found
            $ReadOnly = $null
        } else {
            $ReadOnly = $JsonParameters.PSobject.Properties["ReadOnly"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Serial"))) { #optional property not found
            $Serial = $null
        } else {
            $Serial = $JsonParameters.PSobject.Properties["Serial"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vendor"))) { #optional property not found
            $Vendor = $null
        } else {
            $Vendor = $JsonParameters.PSobject.Properties["Vendor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClaimedByUser"))) { #optional property not found
            $ClaimedByUser = $null
        } else {
            $ClaimedByUser = $JsonParameters.PSobject.Properties["ClaimedByUser"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterMembers"))) { #optional property not found
            $ClusterMembers = $null
        } else {
            $ClusterMembers = $JsonParameters.PSobject.Properties["ClusterMembers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceClaim"))) { #optional property not found
            $DeviceClaim = $null
        } else {
            $DeviceClaim = $JsonParameters.PSobject.Properties["DeviceClaim"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceConfiguration"))) { #optional property not found
            $DeviceConfiguration = $null
        } else {
            $DeviceConfiguration = $JsonParameters.PSobject.Properties["DeviceConfiguration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroup"))) { #optional property not found
            $DomainGroup = $null
        } else {
            $DomainGroup = $JsonParameters.PSobject.Properties["DomainGroup"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ParentConnection"))) { #optional property not found
            $ParentConnection = $null
        } else {
            $ParentConnection = $JsonParameters.PSobject.Properties["ParentConnection"].value
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
            "ApiVersion" = ${ApiVersion}
            "AppPartitionNumber" = ${AppPartitionNumber}
            "ConnectionId" = ${ConnectionId}
            "ConnectionReason" = ${ConnectionReason}
            "ConnectionStatus" = ${ConnectionStatus}
            "ConnectionStatusLastChangeTime" = ${ConnectionStatusLastChangeTime}
            "ConnectorVersion" = ${ConnectorVersion}
            "DeviceExternalIpAddress" = ${DeviceExternalIpAddress}
            "ProxyApp" = ${ProxyApp}
            "AccessKeyId" = ${AccessKeyId}
            "ClaimedByUserName" = ${ClaimedByUserName}
            "ClaimedTime" = ${ClaimedTime}
            "DeviceHostname" = ${DeviceHostname}
            "DeviceIpAddress" = ${DeviceIpAddress}
            "ExecutionMode" = ${ExecutionMode}
            "ParentSignature" = ${ParentSignature}
            "Pid" = ${VarPid}
            "PlatformType" = ${PlatformType}
            "PublicAccessKey" = ${PublicAccessKey}
            "ReadOnly" = ${ReadOnly}
            "Serial" = ${Serial}
            "Vendor" = ${Vendor}
            "Account" = ${Account}
            "ClaimedByUser" = ${ClaimedByUser}
            "ClusterMembers" = ${ClusterMembers}
            "DeviceClaim" = ${DeviceClaim}
            "DeviceConfiguration" = ${DeviceConfiguration}
            "DomainGroup" = ${DomainGroup}
            "ParentConnection" = ${ParentConnection}
        }

        return $PSO
    }

}
