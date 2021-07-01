Profile:        PMSIProcedure
Parent:         Procedure
Id:             pmsi-procedure
Title:          "Acte Médical (PMSI)"
Description:    "Profil pour la ressource Procedure du PMSI"
* ^publisher = "Arkhn"
* identifier MS
* category MS
// Fix value Procedure Category: CCAM Classification Commune des Actes Médicaux
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "system"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on the category.system pattern"

* category contains CCAM 1..1 MS 
* category[CCAM].coding.code = "CCAM"
* category[CCAM].coding.display = "Classification Commune de Actes Médicaux"

* code MS
// Value set for Code : Code CCAM 
* code ^slicing.discriminator.type = #pattern 
* code ^slicing.discriminator.path = "system"
* code ^slicing.rules = #open
* code ^slicing.ordered = false   // can be omitted, since false is the default
* code ^slicing.description = "Slice based on the code.system pattern" 

* code contains code-CCAM 1..1
* code[code-CCAM] ^definition = "A code from CCAM (french classification for medical acts)"
* code[code-CCAM] from CCAM (required)



* subject MS
// Reference to Patient resource
* encounter MS
//Reference to resource: résumé d'unité médicale (RUM)