Import-Module ActiveDirectory

$nom = Read-Host "Nom de la nova OU"
$ubicacio = Read-Host "Ruta de la OU"

New-ADOrganizationalUnit -Name $nom -Path $ubicacio