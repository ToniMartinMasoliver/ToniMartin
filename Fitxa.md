# Fitxa 1 — Anàlisi inicial de MusicCloud

**Nom i Cognoms**: Toni Martin Masoliver

**Data**: 22/09/2026

## Objectiu

MusicCloud necessita reorganitzar la seva infraestructura informàtica. Abans d'instal·lar o configurar cap servei, cal entendre:

- qui treballa a l'empresa;
    
- quines funcions té cada persona;
    
- quins recursos existeixen;
    
- qui necessita accedir a cada recurs;
    
- com podem gestionar aquests accessos de manera eficient.
    

---

# 1. Conèixer MusicCloud

Consulta la informació disponible sobre els departaments, treballadors i perfils d'usuari de MusicCloud.

Completa la taula següent.

|Persona|Departament|Funció / responsabilitat|Necessita privilegis especials? Per què?|
| Persona          | Departament       | Funció / responsabilitat                                                   | Necessita privilegis especials? Per què?                                                                  |
| ---------------- | ----------------- | -------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| Aina Ciurans     | Direcció          | Gestió general de l'empresa                                                | **Sí.** Necessita accés als recursos de Direcció i a determinada informació dels altres departaments.     |
| Rut Tornil       | Direcció          | Gestió general de l'empresa                                                | **Sí.** Necessita accés als recursos de Direcció i a determinada informació dels altres departaments.     |
| Dídac Gassó      | Administració     | Factures, contractes i documentació interna                                | **No.** És un usuari estàndard del departament.                                                           |
| Laia Macias      | Administració     | Cap de departament i gestió de factures, contractes i documentació interna | **Sí.** Necessita permisos de responsable sobre els recursos del departament.                             |
| Estel Birosta    | Suport tècnic     | Manteniment de sistemes i gestió d'incidències                             | **No.** És un usuari estàndard del departament.                                                           |
| Aina Zuriguel    | Suport tècnic     | Manteniment de sistemes i gestió d'incidències                             | **No.** És un usuari estàndard del departament.                                                           |
| Lluïsa Richart   | Suport tècnic     | Cap de departament i gestió d'incidències                                  | **Sí.** Necessita permisos de responsable sobre els recursos del departament.                             |
| Roser Alberch    | Producció musical | Gestió de continguts musicals                                              | **No.** És un usuari estàndard del departament.                                                           |
| Guillem Adella   | Producció musical | Gestió de continguts musicals                                              | **No.** És un usuari estàndard del departament.                                                           |
| Meritxell Reglat | Producció musical | Cap de departament i gestió de continguts musicals                         | **Sí.** Necessita permisos de responsable sobre els recursos del departament.                             |
| Alícia Monclús   | Producció musical | Gestió de continguts musicals                                              | **No.** És un usuari estàndard del departament.                                                           |
| Carles Molins    | Producció musical | Gestió de continguts musicals                                              | **No.** És un usuari estàndard del departament.                                                           |
| Eulàlia Galcera  | Producció musical | Gestió de continguts musicals                                              | **No.** És un usuari estàndard del departament.                                                           |
| Talia Costas     | Informàtica       | Cap de departament i suport del sistema informàtic                         | **Sí.** Necessita privilegis tècnics per administrar els recursos informàtics i coordinar el departament. |
| Alex Soriano     | Informàtica       | Suport del sistema informàtic                                              | **Sí.** Necessita privilegis tècnics per realitzar tasques d'administració i manteniment dels sistemes.   |


### 1.1. Reflexió

Quines diferències observes entre un **treballador**, un **departament** i una **funció o responsabilitat**?

Un treballador és una persona que forma part de l'empresa i té un compte d'usuari dins del sistema.

Un departament és un conjunt de treballadors que realitzen activitats relacionades dins de l'empresa, com ara Administració, Suport tècnic o Producció musical.

Una funció o responsabilitat descriu les tasques que realitza una persona dins del seu departament. Per exemple, un cap de departament té responsabilitats de coordinació i gestió que no tenen els altres treballadors.

---

---

---

Hi ha persones que, pel seu càrrec o funció, necessiten accessos diferents dels altres membres del seu departament?

x Sí  
☐ No

Posa'n algun exemple:

Sí. Per exemple, Laia Macias, com a cap del departament d'Administració, necessita permisos addicionals per accedir i gestionar la carpeta gestio_departament, mentre que Dídac Gassó, com a usuari estàndard, no necessita aquests permisos.
 
 Un altre exemple és Talia Costas, responsable d'Informàtica, que necessita privilegis tècnics per poder administrar i mantenir els sistemes informàtics de MusicCloud.

---

---

---

# 2. Recursos de l'empresa

Analitza l'estructura d'informació de MusicCloud.

Classifica alguns dels recursos següents segons la seva finalitat.

|Recurs|Qui creus que l'hauria d'utilitzar?|Per a què?|
|---|---|---|
|`/empresa/comu/intercanvi`|Tots els treballadors i usuaris externs autoritzats|Per intercanviar temporalment documents entre MusicCloud i usuaris externs.|
|`/empresa/comu/comunicats`|Tots els treballadors de l'empresa|Per consultar els comunicats i la informació general de l'empresa.|
|`/empresa/departaments/administracio/compartida`|Treballadors del departament d'Administració|Per compartir i gestionar documents relacionats amb les tasques del departament.|
|`/empresa/departaments/administracio/gestio_departament`|Laia Macias, cap d'Administració|Per gestionar la informació i documentació pròpia de la coordinació del departament.|
|`/empresa/projectes/campanya_estiu`|Usuaris assignats al projecte|Per treballar i compartir els documents relacionats amb el projecte de la campanya d'estiu.|
|`/empresa/administracio_sistema/backups`|Administradors del sistema|Per gestionar i conservar les còpies de seguretat dels sistemes i de la informació de MusicCloud.|

---

# 3. Qui ha de poder fer què?

Per a cada situació, indica quin nivell d'accés consideres adequat.

Utilitza:

- **NA** → sense accés
    
- **L** → lectura
    
- **L/E** → lectura i escriptura
    
- **ADM** → administració
    

No busquis encara una solució tècnica. Pensa només en les necessitats de l'empresa.

|Situació|Accés proposat|Justificació|
|---|---|---|
|Dídac accedeix a la carpeta compartida d'Administració|L/E|És un treballador d'Administració i necessita crear, consultar, modificar i eliminar documents relacionats amb les seves tasques.|
|Laia accedeix a la gestió del departament d'Administració|L/E|Laia és la cap d'Administració i necessita gestionar la informació de coordinació del departament.|
|Pere, treballador extern, accedeix als comunicats interns|NA|Els comunicats interns contenen informació destinada als treballadors de MusicCloud i els usuaris externs no hi tenen accés.|
|Talia accedeix als backups del sistema|ADM|Talia és responsable d'Informàtica i necessita gestionar les còpies de seguretat com a part de les seves funcions tècniques.|
|Un membre de Producció musical accedeix a la carpeta d'Administració|NA|No necessita accedir a la documentació pròpia d'Administració per desenvolupar les seves funcions.|
|Un participant de `campanya_estiu` accedeix als fitxers del projecte|L/E|Els usuaris assignats al projecte necessiten treballar amb els fitxers, creant i modificant la documentació del projecte.|

---

# 4. Primer problema: com assignem els permisos?

Imagina que MusicCloud té només quatre treballadors:

- Anna
    
- Biel
    
- Carla
    
- David
    

Tots quatre treballen al mateix departament i necessiten accedir a la mateixa carpeta.

Una possible solució seria configurar:

```text
Anna  → lectura/escriptura
Biel  → lectura/escriptura
Carla → lectura/escriptura
David → lectura/escriptura
```

### 4.1.

Què passaria si l'empresa tingués **100 treballadors** amb el mateix tipus d'accés?

Si l'empresa tingués 100 treballadors amb el mateix tipus d'accés, seria molt difícil gestionar els permisos un per un. Augmentaria la feina d'administració i també el risc de cometre errors.

---

---

### 4.2.

Què passaria cada vegada que s'incorporés una persona nova?

Cada vegada que s'incorporés una persona nova, caldria configurar manualment els seus permisos. Això faria que el procés fos més lent i podria provocar que l'usuari no tingués els accessos correctes.


---

---

### 4.3.

Què passaria quan una persona canviés de departament?

Quan una persona canviés de departament, caldria eliminar els permisos que tenia al departament anterior i assignar-li els nous permisos. Si no es fes correctament, podria conservar accés a informació que ja no necessita.



---

---

### 4.4.

Proposa una manera de gestionar aquestes persones conjuntament.

No cal que coneguis encara el nom tècnic de la solució.



Una millor opció seria agrupar les persones segons el departament o el tipus de funció que realitzen i assignar els permisos al grup en lloc de fer-ho persona per persona.

D'aquesta manera, quan s'incorporés una persona nova, només caldria afegir-la al grup corresponent, i quan canviés de departament, es podria canviar de grup. Això faria que la gestió fos més senzilla, ràpida i segura.


---

---

---

---

# 5. Canvis a MusicCloud

Ara es produeixen aquests tres canvis:

### Cas A

Dídac deixa Administració i passa a Producció musical.

Quins accessos hauria de perdre?

Hauria de perdre els accessos als recursos exclusius d'Administració, com ara:

**/empresa/departaments/administracio/compartida**

**/empresa/departaments/administracio/gestio_departament**

**/empresa/departaments/administracio/documentacio_interna**

També hauria de deixar de tenir qualsevol altre accés que li correspongués exclusivament pel fet de pertànyer a Administració.




---

Quins accessos hauria d'obtenir?

Hauria d'obtenir els accessos corresponents a un usuari estàndard de Producció musical, com ara:

**/empresa/departaments/produccio_musical/compartida → L/E**

**/empresa/departaments/produccio_musical/artistes → L/E**

**/empresa/departaments/produccio_musical/cataleg → L/E**

A més, conservaria els accessos comuns que corresponguin a tots els treballadors de MusicCloud.





---

---

### Cas B

S'incorpora una nova treballadora al departament d'Administració.

Quins accessos caldria configurar?

Caldria crear el seu usuari i assignar-lo al grup corresponent d'Administració.

Hauria de tenir els mateixos accessos que un usuari estàndard d'Administració:

Carpeta compartida d'Administració → L/E
Documentació interna d'Administració → L/E
Recursos comuns de l'empresa segons correspongui.
La seva carpeta personal.

No hauria de tenir accés a gestio_departament, perquè aquest recurs està reservat a Laia Macias, responsable d'Administració.





---

---

---

### Cas C

Pere Espinalt deixa de col·laborar amb MusicCloud.

Què hauríem de fer amb els seus accessos?


Hauríem de retirar tots els seus accessos als recursos de MusicCloud i desactivar el seu compte d'usuari.

D'aquesta manera, Pere no podria continuar accedint als recursos compartits de l'empresa després de finalitzar la seva col·laboració.

Idea principal: els canvis d'empresa s'han de reflectir també en els permisos: quan una persona canvia de funció, els seus accessos s'han d'actualitzar; quan deixa l'empresa, els accessos s'han de retirar.


---

---

---

# 6. Busquem una solució millor

Suposa ara que podem crear conjunts de persones que comparteixen unes mateixes necessitats d'accés.

Per exemple:

```text
Administració
    ├── Dídac
    ├── Laia
    └── Roser
```

I podem donar permisos directament al conjunt:

```text
Administració → carpeta_administracio → L/E
```

### 6.1.

Quin avantatge té aquesta solució respecte a donar permisos persona per persona?

L'avantatge és que els permisos es gestionen una sola vegada per al conjunt de persones, en lloc de configurar-los individualment.

Això facilita l'administració, redueix els errors i permet incorporar o eliminar usuaris del conjunt sense haver de modificar els permisos de cada recurs.




---

---

### 6.2.

Si Dídac passa d'Administració a Producció musical, què caldria modificar?

Caldria treure Dídac del conjunt d'Administració i afegir-lo al conjunt de Producció musical.

Els permisos de les carpetes s'actualitzarien segons els conjunts als quals pertany Dídac.



---

---

### 6.3.

Com anomenaries aquests conjunts de persones?

Aquests conjunts de persones s'anomenarien grups d'usuaris.

Per exemple:

Administracio
SuportTecnic
ProduccioMusical
Informatica
Direccio

Més endavant, aquests grups ens permetran gestionar els permisos d'accés als recursos de MusicCloud de manera centralitzada.



---

---

# 7. Primera proposta per a MusicCloud

A partir de l'organització de l'empresa, proposa els primers conjunts de persones que crearies.

**No cal trobar encara la solució definitiva.**

|Nom proposat|Qui hi pertanyeria?|Per què existeix aquest conjunt?|
| Nom proposat       | Qui hi pertanyeria?                                                                             | Per què existeix aquest conjunt?                                                                             |
| ------------------ | ----------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| `Direccio`         | Aina Ciurans, Rut Tornil                                                                        | Agrupar les persones de Direcció per gestionar els seus accessos als recursos propis d'aquest departament.   |
| `Administracio`    | Dídac Gassó, Laia Macias                                                                        | Agrupar els treballadors d'Administració per gestionar els accessos als recursos compartits del departament. |
| `SuportTecnic`     | Estel Birosta, Aina Zuriguel, Lluïsa Richart                                                    | Agrupar els treballadors de Suport tècnic per gestionar els accessos als recursos del departament.           |
| `ProduccioMusical` | Roser Alberch, Guillem Adella, Meritxell Reglat, Alícia Monclús, Carles Molins, Eulàlia Galcera | Agrupar els treballadors de Producció musical per gestionar els accessos als recursos del departament.       |
| `Informatica`      | Talia Costas, Alex Soriano                                                                      | Agrupar els treballadors d'Informàtica per gestionar els accessos als recursos tècnics del departament.      |

---

# 8. Cas que complica el model

Laia treballa al departament d'Administració, però també és la responsable del departament.

És suficient que pertanyi només al conjunt `Administració`?

☐ Sí  
X No

Per què?




No és suficient perquè Laia, a més de ser treballadora d'Administració, és la responsable del departament i necessita permisos diferents dels altres membres.

Per tant, hauria de pertànyer al conjunt Administracio i també a un conjunt específic de responsables, per exemple ResponsablesDepartament.

    Administracio
    ├── Dídac
    └── Laia

    ResponsablesDepartament
    └── Laia



El grup Administracio li permetria accedir als recursos comuns del departament, mentre que ResponsablesDepartament li permetria obtenir els permisos addicionals corresponents a la seva responsabilitat.





---

---

Quina possible solució proposes?


Una possible solució és crear grups segons el departament i grups addicionals segons les responsabilitats.

En aquest cas:

Administracio → inclou tots els treballadors d'Administració.
ResponsablesDepartament → inclou els responsables dels diferents departaments.

Així, Laia pertanyeria als dos grups i obtindria els permisos generals d'Administració i els permisos addicionals corresponents a la seva responsabilitat com a cap de departament.

Aquesta solució permet gestionar els permisos de manera més fàcil, ordenada i segura, sense haver d'assignar permisos individualment a cada usuari.



---

---

---

# 9. Un altre cas

Diverses persones de departaments diferents participen temporalment en el projecte:

```text
Campanya Estiu
```

Creus que hauríem de canviar-les de departament?

☐ Sí  
☐ No

Si no, com podríem donar-los accés als recursos del projecte?

---

---

---

# 10. Conclusions

Completa les frases amb les teves paraules.

### Usuari

Un usuari representa:

---

### Recurs

Un recurs és:

---

### Permís

Un permís determina:

---

### Grup

Un grup serveix per:

---

---

# 11. Regla de mínim privilegi

Analitza aquesta afirmació:

> Un usuari només hauria de tenir els permisos estrictament necessaris per realitzar la seva feina.

Explica amb les teves paraules què significa.

---

---

Posa un exemple relacionat amb MusicCloud.

---

---

---

# 12. Pregunta final

Imagina que demà MusicCloud passa de 14 treballadors a 500.

Quina de les dues estratègies consideres més adequada?

☐ Assignar permisos individualment a cada usuari.

☐ Organitzar els usuaris segons les seves necessitats i assignar permisos a aquests conjunts.

Justifica la resposta.


