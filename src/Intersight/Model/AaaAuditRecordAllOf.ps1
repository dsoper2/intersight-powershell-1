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

Definition of the list of properties defined in 'aaa.AuditRecord', excluding properties defined in parent classes.

.PARAMETER Email
The email of the associated user that made the change.  In case the user is later deleted, we still have some reference to the information.
.PARAMETER InstId
The instance id of AuditRecordLocal, which is used to identify if the comming AuditRecordLocal was already processed before.
.PARAMETER SourceIp
The source IP of the client.
.PARAMETER UserIdOrEmail
The userId or the email of the associated user that made the change. In case that user is later deleted, we still have some reference to the information.
.PARAMETER Account
No description available.
.PARAMETER Sessions
No description available.
.PARAMETER User
No description available.
.OUTPUTS

AaaAuditRecordAllOf<PSCustomObject>
#>

function Initialize-IntersightAaaAuditRecordAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")]
        [String]
        ${Email},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InstId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceIp},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserIdOrEmail},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Sessions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${User}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAaaAuditRecordAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Email" = ${Email}
            "InstId" = ${InstId}
            "SourceIp" = ${SourceIp}
            "UserIdOrEmail" = ${UserIdOrEmail}
            "Account" = ${Account}
            "Sessions" = ${Sessions}
            "User" = ${User}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AaaAuditRecordAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AaaAuditRecordAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AaaAuditRecordAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAaaAuditRecordAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAaaAuditRecordAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAaaAuditRecordAllOf
        $AllProperties = ("Email", "InstId", "SourceIp", "Timestamp", "UserIdOrEmail", "Account", "Sessions", "User")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["Email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InstId"))) { #optional property not found
            $InstId = $null
        } else {
            $InstId = $JsonParameters.PSobject.Properties["InstId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SourceIp"))) { #optional property not found
            $SourceIp = $null
        } else {
            $SourceIp = $JsonParameters.PSobject.Properties["SourceIp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["Timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UserIdOrEmail"))) { #optional property not found
            $UserIdOrEmail = $null
        } else {
            $UserIdOrEmail = $JsonParameters.PSobject.Properties["UserIdOrEmail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Sessions"))) { #optional property not found
            $Sessions = $null
        } else {
            $Sessions = $JsonParameters.PSobject.Properties["Sessions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "User"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["User"].value
        }

        $PSO = [PSCustomObject]@{
            "Email" = ${Email}
            "InstId" = ${InstId}
            "SourceIp" = ${SourceIp}
            "Timestamp" = ${Timestamp}
            "UserIdOrEmail" = ${UserIdOrEmail}
            "Account" = ${Account}
            "Sessions" = ${Sessions}
            "User" = ${User}
        }

        return $PSO
    }

}

