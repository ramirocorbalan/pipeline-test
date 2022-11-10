$SERVER = $args[0]
$SERVICE = $args[1]
$SERVICE_FOLDER = $args[2]
$BUILD = $args[3]

Write-host "---------BACKUP $($SERVICE) : $($SERVER)---------------"
Write-host "==============================================================="

Write-host "CREANDO BKP $($SERVICE)_FOLDER_preBuild$($BUILD).zip======="
<#
Compress-Archive -Path $SERVICE_FOLDER -DestinationPath $SERVICE_FOLDER'_preBuild'$BUILD.zip -force
#>