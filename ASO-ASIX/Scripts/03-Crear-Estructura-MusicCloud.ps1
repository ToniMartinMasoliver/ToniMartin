Import-Module ActiveDirectory

# Crear la UO principal
New-ADOrganizationalUnit `
    -Name "MusicCloud" `
    -Path "DC=musiccloud,DC=local"

# Crear les UO descendents
New-ADOrganizationalUnit `
    -Name "Usuaris" `
    -Path "OU=MusicCloud,DC=musiccloud,DC=local"

New-ADOrganizationalUnit `
    -Name "Equips" `
    -Path "OU=MusicCloud,DC=musiccloud,DC=local"

New-ADOrganizationalUnit `
    -Name "Grups" `
    -Path "OU=MusicCloud,DC=musiccloud,DC=local"