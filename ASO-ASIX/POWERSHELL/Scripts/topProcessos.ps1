
# =====================
# PROCESSOS AMB MES CPU
# =====================

$processos = Get-Process

$totalProcessos = $processos.Count

Write-Host "===== TOP 10 PROCESSOS ====="
Write-Host ""

$processos |
    Sort-Object CPU -Descending |
    Select-Object -First 10 Name, Id, CPU |
    Format-Table -AutoSize

Write-Host ""
Write-Host "Nombre total de processos: $totalProcessos"
