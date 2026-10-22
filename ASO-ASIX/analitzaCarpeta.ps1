
# ANALISI DE FITXERS D'UNA CARPETA

$elements = Get-ChildItem
$fitxers = Get-ChildItem -File

Write-Output "===== ANALISI DE LA CARPETA ====="
Write-Output ""
Write-Output "Nombre total d'elements: $($elements.Count)"
Write-Output ""
Write-Output "===== ELS 5 FITXERS MES GRANS ====="

$fitxers |
    Sort-Object Length -Descending |
    Select-Object -First 5 Name, Length
