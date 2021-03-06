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

Definition of the list of properties defined in 'externalsite.Authorization', excluding properties defined in parent classes.

.PARAMETER Password
The password of the given username to download the image from external repository like cisco.com.
.PARAMETER RepositoryType
The repository type to which this authorization will be requested. Cisco is the only available repository today.
.PARAMETER UserId
The username that has permission to download the image from external repository like cisco.com.
.PARAMETER Account
No description available.
.OUTPUTS

ExternalsiteAuthorizationAllOf<PSCustomObject>
#>

function Initialize-IntersightExternalsiteAuthorizationAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("cisco")]
        [String]
        ${RepositoryType} = "cisco",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightExternalsiteAuthorizationAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Password" = ${Password}
            "RepositoryType" = ${RepositoryType}
            "UserId" = ${UserId}
            "Account" = ${Account}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ExternalsiteAuthorizationAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ExternalsiteAuthorizationAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ExternalsiteAuthorizationAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToExternalsiteAuthorizationAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightExternalsiteAuthorizationAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightExternalsiteAuthorizationAllOf
        $AllProperties = ("IsPasswordSet", "IsUserIdSet", "Password", "RepositoryType", "UserId", "Account")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsPasswordSet"))) { #optional property not found
            $IsPasswordSet = $null
        } else {
            $IsPasswordSet = $JsonParameters.PSobject.Properties["IsPasswordSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsUserIdSet"))) { #optional property not found
            $IsUserIdSet = $null
        } else {
            $IsUserIdSet = $JsonParameters.PSobject.Properties["IsUserIdSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["Password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RepositoryType"))) { #optional property not found
            $RepositoryType = $null
        } else {
            $RepositoryType = $JsonParameters.PSobject.Properties["RepositoryType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UserId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["UserId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
        }

        $PSO = [PSCustomObject]@{
            "IsPasswordSet" = ${IsPasswordSet}
            "IsUserIdSet" = ${IsUserIdSet}
            "Password" = ${Password}
            "RepositoryType" = ${RepositoryType}
            "UserId" = ${UserId}
            "Account" = ${Account}
        }

        return $PSO
    }

}

