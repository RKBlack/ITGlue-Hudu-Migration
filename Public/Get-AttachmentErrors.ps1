$RawAssetPasswordAttachmentsUpload = Get-Content "$env:APPDATA\HuduMigration\onxinc.itglue.com\MigrationLogs\AssetPassword-attachments-upload.json"
$RawArticleAttachmentsUpload = Get-Content "$env:APPDATA\HuduMigration\onxinc.itglue.com\MigrationLogs/Article-attachments-upload.json"
$RawAssetAttachmentsUpload = Get-Content "$env:APPDATA\HuduMigration\onxinc.itglue.com\MigrationLogs\Asset-attachments-upload.json"

$AssetPasswordAttachmentsUpload = $RawAssetPasswordAttachmentsUpload | ConvertFrom-Json
$ArticleAttachmentsUpload = $RawArticleAttachmentsUpload | ConvertFrom-Json
$AssetAttachmentsUpload = $RawAssetAttachmentsUpload | ConvertFrom-Json

$MissedAssetPasswordAttachmentsUpload = $AssetPasswordAttachmentsUpload | Where-Object { $null -eq $_.URL }
$MissedArticleAttachmentsUpload = $ArticleAttachmentsUpload | Where-Object { $null -eq $_.URL }
$MissedAssetAttachmentsUpload = $AssetAttachmentsUpload | Where-Object { $null -eq $_.URL }

$MissedAssetPasswordAttachmentsUpload | Export-Csv "$env:APPDATA\HuduMigration\onxinc.itglue.com\MigrationLogs\MissedAssetPasswordAttachmentsUpload.csv" -NoTypeInformation
$MissedArticleAttachmentsUpload | Export-Csv "$env:APPDATA\HuduMigration\onxinc.itglue.com\MigrationLogs\MissedArticleAttachmentsUpload.csv" -NoTypeInformation
$MissedAssetAttachmentsUpload | Export-Csv "$env:APPDATA\HuduMigration\onxinc.itglue.com\MigrationLogs\MissedAssetAttachmentsUpload.csv" -NoTypeInformation