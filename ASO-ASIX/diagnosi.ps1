
# =====================
# PROCESSOS
# =====================

$processos = Get-Process

Write-Output "===== PROCESSOS ====="

$processos |
    Sort-Object CPU -Descending |
    Select-Object -First 5 Name, Id, CPU

# =====================
# SERVEIS
# =====================

$serveis = Get-Service

$totalServeis = $serveis.Count
$serveisExecutant = ($serveis | Where-Object { $_.Status -eq "Running" }).Count
$serveisAturats = ($serveis | Where-Object { $_.Status -ne "Running" }).Count

Write-Output ""
Write-Output "===== SERVEIS ====="
Write-Output "Total de serveis: $totalServeis"
Write-Output "Serveis en execucio: $serveisExecutant"
Write-Output "Serveis no executats: $serveisAturats"

# =====================
# FITXERS
# =====================

$fitxers = Get-ChildItem -File

Write-Output ""
Write-Output "===== FITXERS MES GRANS ====="

$fitxers |
    Sort-Object Length -Descending |
    Select-Object -First 3 Name, Length

# =====================
# ESTAT FINAL
# =====================

Write-Output ""
Write-Output "===== RESUM ====="
Write-Output "Processos analitzats: $($processos.Count)"
Write-Output "Serveis analitzats: $($serveis.Count)"
Write-Output "Fitxers analitzats: $($fitxers.Count)"
