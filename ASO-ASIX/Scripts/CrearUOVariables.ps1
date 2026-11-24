# Enunciat: Crear Script Powershell que crei unitats organitzatives amb valors fixes i variables

Import-Module ActiveDirectory

# Variables
$nomOU = "Administracio"
$ubicacio = "OU=Usuaris,OU=MusicCloud,DC=musiccloud,DC=local"

# Comprovar si la UO existeix
$OU = Get-ADOrganizationalUnit -Filter "Name -eq '$nomOU'" -SearchBase $ubicacio -SearchScope OneLevel

if ($OU) {
    Write-Host "La UO $nomOU ja existeix."
}
else {
    # Crear la unitat organitzativa
    New-ADOrganizationalUnit -Name $nomOU -Path $ubicacio
    Write-Host "La UO $nomOU s'ha creat correctament."
}