Import-Module ActiveDirectory

# Definir el domini
$domini = "DC=musiccloud,DC=local"

# Funció per comprovar i crear una UO
function Crear-UO {
    param (
        [string]$Nom,
        [string]$Ruta
    )

    $UO = Get-ADOrganizationalUnit -Filter "Name -eq '$Nom'" -SearchBase $Ruta -SearchScope OneLevel

    if ($UO) {
        Write-Host "La UO $Nom ja existeix."
    }
    else {
        New-ADOrganizationalUnit -Name $Nom -Path $Ruta
        Write-Host "La UO $Nom s'ha creat correctament."
    }
}

# Crear la UO principal
Crear-UO -Nom "MusicCloud" -Ruta $domini

# Definir la ruta de la UO principal
$rutaMusicCloud = "OU=MusicCloud,$domini"

# Crear les UO de primer nivell
Crear-UO -Nom "Usuaris" -Ruta $rutaMusicCloud
Crear-UO -Nom "Equips" -Ruta $rutaMusicCloud
Crear-UO -Nom "Grups" -Ruta $rutaMusicCloud

# Definir la ruta de la UO Usuaris
$rutaUsuaris = "OU=Usuaris,$rutaMusicCloud"

# Crear les UO dels departaments
Crear-UO -Nom "Administracio" -Ruta $rutaUsuaris
Crear-UO -Nom "Comercial" -Ruta $rutaUsuaris
Crear-UO -Nom "Desenvolupament" -Ruta $rutaUsuaris
Crear-UO -Nom "Sistemes" -Ruta $rutaUsuaris
Crear-UO -Nom "Direccio" -Ruta $rutaUsuaris

# Definir la ruta de la UO Equips
$rutaEquips = "OU=Equips,$rutaMusicCloud"

# Crear les UO dels equips
Crear-UO -Nom "Clients" -Ruta $rutaEquips
Crear-UO -Nom "Servidors" -Ruta $rutaEquips