#
# Module manifest for module 'Nutanix'
#
# Generated by: Nutanix
#
# Generated on: 6/10/19
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '1.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '197269f6-8815-402f-97d1-c06a1261bc78'

# Author of this module
Author = 'Nutanix'

# Company or vendor of this module
CompanyName = 'Nutanix'

# Copyright statement for this module
Copyright = '(c) Nutanix. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Provides cmdlets for developers and administrators to manage their Nutanix resources from the Windows PowerShell scripting environment.'

# Minimum version of the PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('./bin/Nutanix.private.dll', 
               'Nutanix.psm1')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-CategoryKey', 'Get-CategoryValue', 'Get-Cluster', 
               'Get-EntityByCategory', 'Get-Image', 'Get-SecurityRule', 'Get-Subnet', 
               'Get-Task', 'Get-TaskList', 'Get-Vm', 'Invoke-SecurityNetwork', 
               'New-AccessControlPolicyListMetadataObject', 'New-AddressObject', 
               'New-AvailabilityZoneReferenceObject', 'New-CategoryFilterObject', 
               'New-CategoryKey', 'New-CategoryKeyObject', 
               'New-CategoryListMetadataObject', 'New-CategoryQueryInputObject', 
               'New-CategoryValue', 'New-CategoryValueObject', 
               'New-CertificationSigningInfoObject', 'New-ChecksumObject', 
               'New-CitrixConnectorConfigDetailsSpecObject', 
               'New-CitrixResourceLocationSpecObject', 'New-ClientAuthObject', 
               'New-ClusterConfigSpecObject', 'New-ClusterDomainServerObject', 
               'New-ClusterIntentInputObject', 'New-ClusterListMetadataObject', 
               'New-ClusterMetadataObject', 'New-ClusterNetworkEntityObject', 
               'New-ClusterNetworkObject', 'New-ClusterObject', 
               'New-ClusterReferenceObject', 'New-ClusterResourcesObject', 
               'New-CredentialsObject', 'New-DhcpOptionsObject', 'New-DiskObject', 
               'New-ExternalConfigurationsSpecObject', 'New-Image', 
               'New-ImageIntentInputObject', 'New-ImageListMetadataObject', 
               'New-ImageMetadataObject', 'New-ImageMigrateInputObject', 
               'New-ImageObject', 'New-ImageResourcesObject', 
               'New-ImageVersionResourcesObject', 'New-IpConfigObject', 
               'New-Migrate', 'New-NetworkFunctionChainReferenceObject', 
               'New-NetworkSecurityRuleIntentInputObject', 
               'New-NetworkSecurityRuleListMetadataObject', 
               'New-NetworkSecurityRuleMetadataObject', 
               'New-NetworkSecurityRuleObject', 
               'New-NetworkSecurityRuleResourcesAppRuleObject', 
               'New-NetworkSecurityRuleResourcesIsolationRuleObject', 
               'New-NetworkSecurityRuleResourcesObject', 
               'New-NetworkSecurityRuleResourcesQuarantineRuleObject', 
               'New-NutanixCredential', 'New-Poll', 'New-ProjectReferenceObject', 
               'New-SecurityRule', 'New-SmtpServerObject', 'New-Subnet', 
               'New-SubnetIntentInputObject', 'New-SubnetListMetadataObject', 
               'New-SubnetMetadataObject', 'New-SubnetObject', 
               'New-SubnetResourcesObject', 'New-TargetGroupObject', 
               'New-TaskListMetadataObject', 'New-TaskPollInputObject', 
               'New-UserReferenceObject', 'New-Vm', 'New-VmIntentInputObject', 
               'New-VmListMetadataObject', 'New-VmMetadataObject', 'New-VmObject', 
               'New-VmRecoveryPointIntentInputObject', 
               'New-VmRecoveryPointListMetadataObject', 
               'New-VmRecoveryPointMetadataObject', 'New-VmResourcesObject', 
               'Remove-CategoryKey', 'Remove-CategoryValue', 'Remove-Image', 
               'Remove-SecurityRule', 'Remove-Subnet', 'Remove-Vm', 'Set-Cluster', 
               'Set-Image', 'Set-ImageFile', 'Set-NutanixCredential', 
               'Set-SecurityRule', 'Set-Subnet'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
FileList = 'Nutanix.psm1'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

