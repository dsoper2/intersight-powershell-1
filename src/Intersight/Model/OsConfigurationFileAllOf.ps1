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

Definition of the list of properties defined in 'os.ConfigurationFile', excluding properties defined in parent classes.

.PARAMETER FileContent
The content of the entire configuration file is stored as value. The content can either be a static file content or a template content. The template is expected to conform to the golang template syntax. The values from os.Answers properties will be used to populate this template.
.PARAMETER Name
The name of the OS ConfigurationFile that uniquely identifies the configuration file.
.PARAMETER Placeholders
No description available.
.PARAMETER Catalog
No description available.
.PARAMETER Distributions
An array of relationships to hclOperatingSystem resources.
.OUTPUTS

OsConfigurationFileAllOf<PSCustomObject>
#>

function Initialize-IntersightOsConfigurationFileAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FileContent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9\\._\\-]+$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Placeholders},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Catalog},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Distributions}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightOsConfigurationFileAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name -and $Name.length -gt 64) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 64."
        }

        
        $PSO = [PSCustomObject]@{
            "FileContent" = ${FileContent}
            "Name" = ${Name}
            "Placeholders" = ${Placeholders}
            "Catalog" = ${Catalog}
            "Distributions" = ${Distributions}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OsConfigurationFileAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to OsConfigurationFileAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OsConfigurationFileAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToOsConfigurationFileAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightOsConfigurationFileAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightOsConfigurationFileAllOf
        $AllProperties = ("FileContent", "Name", "Placeholders", "Supported", "Catalog", "Distributions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FileContent"))) { #optional property not found
            $FileContent = $null
        } else {
            $FileContent = $JsonParameters.PSobject.Properties["FileContent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Placeholders"))) { #optional property not found
            $Placeholders = $null
        } else {
            $Placeholders = $JsonParameters.PSobject.Properties["Placeholders"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Supported"))) { #optional property not found
            $Supported = $null
        } else {
            $Supported = $JsonParameters.PSobject.Properties["Supported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Catalog"))) { #optional property not found
            $Catalog = $null
        } else {
            $Catalog = $JsonParameters.PSobject.Properties["Catalog"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Distributions"))) { #optional property not found
            $Distributions = $null
        } else {
            $Distributions = $JsonParameters.PSobject.Properties["Distributions"].value
        }

        $PSO = [PSCustomObject]@{
            "FileContent" = ${FileContent}
            "Name" = ${Name}
            "Placeholders" = ${Placeholders}
            "Supported" = ${Supported}
            "Catalog" = ${Catalog}
            "Distributions" = ${Distributions}
        }

        return $PSO
    }

}

