Import-Module ActiveDirectory

$BaseDN= "OU=MusicCloud,DC=musiccloud,DC=local"

$OU = Get-ADOrganizationalUnit -Identity $BaseDN

Write-Host "UO TROBADA:"
Write-Host $OU.DistinguishedName
