@{
    RootModule        = '.\ITGlue-Hudu-Migration.psm1'
    ModuleVersion     = '2.0.0'
    GUID              = 'd691b361-54c6-4eaa-9d53-aadfb4cd6c06'
    Description       = 'Forked from lwhitelock/ITGlue-Hudu-Migration'
    FunctionsToExport = 'Add-HuduAttachments',
    'Add-HuduAttachmentsViaAPI',
    'ITGlue-Hudu-Migration',
    'Initialize-Module',
    'Replace-HuduBase64Images',
    'Add-HuduRelation.ps1',
    'Fix-MissingCompayNotes.ps1',
    'Start-ArticleContent.ps1',
    'Start-ArticleStubs.ps1',
    'Start-Companies.ps1',
    'Start-Configurations.ps1',
    'Start-Contacts.ps1',
    'Start-FlexAssetLayouts.ps1',
    'Start-FlexAssets.ps1',
    'Start-Locations.ps1',
    'Start-Websites.ps1',
    'Confirm-Import.ps1',
    'ConvertTo-HuduURL.ps1',
    'Find-MigratedItem.ps1',
    'Get-ConfigurationsImportMode.ps1',
    'Get-FlexLayoutImportMode.ps1',
    'Get-FontAwesomeMap.ps1',
    'Get-ImportMode.ps1',
    'Import-ITGlueItems.ps1',
    'Import-Items.ps1',
    'Initialize-ImageMagik.ps1',
    'Invoke-ImageTest.ps1'
    CmdletsToExport   = @()
    VariablesToExport = '*'
    AliasesToExport   = @()
    PrivateData       = @{
        PSData = @{
        }
    }
}