$SERVER = $args[0]
$SERVICE = $args[1]

write-host "---------START $($SERVICE) : $($SERVER)---------------"
<#
Get-Service -ComputerName $SERVER -Name $SERVICE | start-service
#>
Get-Service -ComputerName $SERVER -Name $:SERVICE | Format-Table -AutoSize
