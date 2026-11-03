
Import-Module ActiveDirectory


$BaseDN = "OU=MusicCloud,DC=musiccloud,DC=local"


$OU = Get-ADOrganizationalUnit -Identity $BaseDN -ErrorAction SilentlyContinue

if ($null -eq $OU) {
    Write-Host "La UO MusicCloud no existeix."
    exit
}


$OUs = Get-ADOrganizationalUnit -SearchBase $BaseDN -SearchScope Subtree -Filter *


foreach ($Item in $OUs) {
    Set-ADOrganizationalUnit -Identity $Item.DistinguishedName -ProtectedFromAccidentalDeletion $false
}


Set-ADOrganizationalUnit -Identity $BaseDN -ProtectedFromAccidentalDeletion $false


$OUs | Sort-Object { $_.DistinguishedName.Length } -Descending | ForEach-Object {
    Remove-ADOrganizationalUnit -Identity $_.DistinguishedName -Confirm:$false
}
Remove-ADOrganizationalUnit -Identity $BaseDN -Confirm:$false

Write-Host "Totes les UO de MusicCloud han estat eliminades correctament."