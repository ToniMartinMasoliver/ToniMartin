# Fitxa 2 — Organització del servei de directori de MusicCloud

## Objectiu

En aquesta sessió hem decidit com organitzar els diferents objectes de MusicCloud dins d'un servei de directori.

Aquesta fitxa forma part de la **documentació de disseny del sistema**. Les decisions que hi indiquis s'utilitzaran posteriorment durant la implantació.
# 1. Objectes que hem de gestionar

MusicCloud necessita gestionar de manera centralitzada diferents tipus d'objectes.

Indica quins tipus d'objectes consideres que ha de contenir el servei de directori.

|Tipus d'objecte|Exemples a MusicCloud|
|---|---|
|Usuaris|Aina Ciurans, Dídac Gassó, Laia Macias, Talia Costas, etc.|
|Grups|Direccio, Administracio, SuportTecnic, ProduccioMusical, Informatica, ResponsablesDepartament, CampanyaEstiu|
|Equips|Ordinadors dels treballadors i altres equips clients de MusicCloud|
|Servidors|Servidors que proporcionen els serveis de MusicCloud|
|Comptes d'aplicacions o serveis|Comptes utilitzats pels serveis i aplicacions de MusicCloud|

Hi afegiries algun altre tipus d'objecte?

Sí. Afegiria contactes o usuaris externs, per poder identificar i gestionar els accessos de persones externes com Pere Espinalt i Neus Bages.

---

---

# 2. Organització mitjançant unitats organitzatives

Proposa les **unitats organitzatives (OU)** principals que utilitzaries a MusicCloud.

|OU|Què contindrà?|Per què la crees?|
|---|---|---|
|Usuaris|Comptes dels treballadors i usuaris de MusicCloud|Per organitzar i gestionar els comptes d'usuari|
|Grups|Grups de seguretat i altres grups|Per tenir agrupats els usuaris segons les seves necessitats|
|Equips|Ordinadors i altres equips clients | Per gestionar i organitzar els equips de l'empresa|
| Servidors|Servidors de MusicCloud|Per separar i gestionar els servidors de manera centralitzada|
|ComptesServeis|Comptes utilitzats per aplicacions i serveis|Per separar aquests comptes dels comptes personals dels treballadors|

## 2.1. Organització dels usuaris

Dibuixa l'estructura que utilitzaries per organitzar els usuaris de MusicCloud.

Com que a l'apartat anterior hem decidit organitzar els objectes per tipus, dins de Usuaris podem separar els treballadors segons el seu departament.

```text
MusicCloud
│
└──└── Usuaris
    ├── Direccio
    ├── Administracio
    ├── SuportTecnic
    ├── ProduccioMusical
    └── Informatica
```

---

# 3. OU o grup?

Indica quina opció utilitzaries principalment en cada cas.

|Necessitat|OU|Grup|
|---|:-:|:-:|
|Organitzar els treballadors d'Administració|X|☐|
|Donar accés a la carpeta d'Administració|☐|X|
|Organitzar els ordinadors clients|X|☐|
|Identificar les persones que participen en Campanya Estiu|☐|X|
|Organitzar els servidors|X|☐|
|Donar privilegis als administradors del sistema|☐|X|
|Organitzar els comptes utilitzats per aplicacions|X|☐|

### Explica amb les teves paraules la diferència principal entre una OU i un grup.

**OU:**
Una OU (Unitat Organitzativa) serveix principalment per organitzar els objectes del directori en una estructura ordenada, per exemple usuaris, equips o servidors.

---



**Grup:**
Un grup serveix per agrupar usuaris o altres comptes que tenen una necessitat comuna, sobretot per assignar permisos i privilegis de manera conjunta.

---



# 4. Un mateix usuari: ubicació i pertinença

Considera aquest cas:

**Dídac Gassó**

- treballa a Administració;
    
- participa en el projecte Campanya Estiu.
    

Indica:

**En quina OU ubicaries el seu compte?**

OU Usuaris/Administracio, perquè Dídac treballa al departament d'Administració.

---

**A quins grups podria pertànyer?**

Administracio, perquè és treballador d'aquest departament.
CampanyaEstiu, perquè participa en aquest projecte.


---

### Per què no és contradictori que estigui en una OU però pertanyi a diversos grups?

No és contradictori perquè l'OU indica on està organitzat el compte dins del directori, mentre que els grups indiquen a quines funcions, recursos o projectes té accés.

Per tant, Dídac està físicament organitzat a l'OU Administracio, però pot pertànyer a diversos grups segons les seves necessitats.


---

---

# 5. Servei de directori

Explica breument què entens per **servei de directori**.

Un servei de directori és un sistema que permet organitzar i gestionar de manera centralitzada la informació dels objectes d'una empresa, com ara usuaris, grups, equips i servidors.

---

---

Quin problema resol a MusicCloud?

A MusicCloud permet tenir tots aquests objectes organitzats i gestionar-los de manera centralitzada, facilitant l'administració dels usuaris, grups, equips i servidors a mesura que l'empresa creix.


---

---

# 6. LDAP

Completa les frases següents.

**LDAP és:**

Un protocol que permet accedir, consultar i gestionar informació emmagatzemada en un servei de directori.

---

**LDAP no és:**

No és un servei de directori en si mateix ni és sinònim d'Active Directory. És un protocol que poden utilitzar els serveis de directori.

---

Indica si les afirmacions són certes o falses.

|Afirmació|C|F|
|---|:-:|:-:|
|LDAP és sinònim d'Active Directory|☐|X|
|LDAP permet accedir i consultar informació d'un directori|X|☐|
|OpenLDAP és una implementació d'un servei de directori|X|☐|
|Active Directory utilitza LDAP, entre altres tecnologies|X|☐|

---

# 7. DIT de MusicCloud

    MusicCloud
    │
    ├── Usuaris
    │   ├── Direccio
    │   ├── Administracio
    │   ├── SuportTecnic
    │   ├── ProduccioMusical
    │   └── Informatica
    │
    ├── Grups
    │   ├── Direccio
    │   │   └── Cap_Direccio
    │   │
    │   ├── Administracio
    │   │   └── Cap_Administracio
    │   │
    │   ├── SuportTecnic
    │   │   └── Cap_SuportTecnic
    │   │
    │   ├── ProduccioMusical
    │   │   └── Cap_ProduccioMusical
    │   │
    │   └── Informatica
    │       └── Cap_Informatica
    │
    ├── Equips
    │   ├── PC
    │   ├── Portatils
    │   ├── Mobils
    │   ├── Impressores
    │   └── Servidors
    │
    ├── Xarxa
    │   ├── Routers
    │   ├── Switches
    │   ├── Firewalls
    │   ├── NAS
    │   └── SAI
    │
    └── Software
            └── Aplicacions
    



---

# 8. Justificació del disseny

Escull **dues decisions** del teu DIT que consideris importants i justifica-les.

### Decisió 1

---

**Justificació:**

---

---

### Decisió 2

---

**Justificació:**

---

---

---

# 9. Comprovació final

Respon breument.

### a) Per què no seria una bona idea guardar tots els usuaris, grups, equips i servidors al mateix nivell sense organitzar-los?

---

---

### b) Per què no hauríem d'utilitzar les OU per substituir els grups de permisos?

---

---

### c) Si MusicCloud passa de 14 a 500 treballadors, quina característica del disseny que has fet avui facilitarà més l'administració?

---

---

---

# Documentació final del sistema

A partir de les decisions preses durant la sessió, deixa definida la proposta que utilitzarem inicialment per a MusicCloud.

## Estructura d'unitats organitzatives

```text
MusicCloud
│
│
│
│
```

## Criteri utilitzat per organitzar els objectes

---

---

## Criteri utilitzat per diferenciar OU i grups
