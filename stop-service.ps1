$SERVER = $args[0]
$SERVICE = $args[1]

write-host "---------STOP $($SERVICE) : $($SERVER)---------------"
<#
Get-Service -ComputerName $SERVER -Name $SERVICE | stop-service
Get-Service -ComputerName $SERVER -Name $:SERVICE | Format-Table -AutoSize
#>