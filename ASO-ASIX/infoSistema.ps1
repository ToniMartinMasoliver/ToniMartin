# INFORMACIO DEL SISTEMA

$equip = $env:COMPUTERNAME
$usuari = $env:USERNAME
$versio = $PSVersionTable.PSVersion
$data = Get-Date
$directori = Get-Location

Write-Output "===== INFORMACIO DEL SISTEMA ====="
Write-Output ""
Write-Output "Equip: $equip"
Write-Output "Usuari: $usuari"
Write-Output "PowerShell: $versio"
Write-Output "Data: $data"
Write-Output "Directori actual: $directori"