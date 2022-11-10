$SERVER = $args[0]
$SERVICE = $args[1]
$SERVICE_FOLDER = $args[2]
$BUILD = $args[3]
$FILE_TO_EXCLUDE = $args[4]
$BUILD_FOLDER = $args[5]

write-host "--------- IMPLEMENTANDO CAMBIOS ---------"
write-host "========================================="

write-host "Archivos excluidos $($FILE_TO_EXCLUDE)-----"

write-host "---------COPIA DIFERENCIAS DESDE $($BUILD_FOLDER)\$($BUILD)\Service A $($SERVICE_FOLDER)---------------"
Set-Variable SOURCE= $($BUILD_FOLDER)\$($BUILD)\Service
Set-Variable DESTINATION= $($SERVICE_FOLDER)

robocopy $($SOURCE) $($DESTINATION)  /s /r:5 /w:5 /xf $($FILE_TO_EXCLUDE)
@echo robocopy exit code: %ERRORLEVEL%
@if %ERRORLEVEL% GTR 3 ( echo robocopy ERROR )
@if %ERRORLEVEL% GTR 3 ( exit %ERRORLEVEL% )
@set ERRORLEVEL=0