Profile:        PMSIProcedure
Parent:         Procedure
Id:             pmsi-procedure
Title:          "Acte Médical (PMSI)"
Description:    "Profil pour la ressource Procedure du PMSI"
* ^publisher = "Arkhn"
* identifier MS
* category MS
// Fix value Procedure Category: CCAM Classification Commune des Actes Médicaux
* code MS
// Value set for Code : Code CCAM 
* code ^definition = "A code from CCAM (french classification for medical acts)"
* subject MS
// Reference to Patient resource
* encounter MS
//Reference to resource: résumé de sortie standardisé (RSS) ou résumé d'unité médicale (RUM)