Profile:        PMSIGHM
Parent:         Observation
Id:             pmsi-grouped-homogene-maladesd-dpdr
Title:          "Groupes homogènes de Malades"
Description:    "Profil pour la ressource Groupes Homogènes de Malades du PMSI"

* identifier MS
//value= N° de Groupage


* category MS
// Code majeure de diagnostic: https://www.atih.sante.fr/manuel-des-ghm-version-11d
* category ^definition = "Code from CMD for PMSI use defined by ATIH"
* category from CMD (required)
* category 1..1

* code MS
// Code Groupes Homogènes de Malades: https://www.atih.sante.fr/manuel-des-ghm-version-11d
* code ^definition = "Code from GHM for PMSI use defined by ATIH"
* code from GHM (required)
* code 1..1


* subject MS
// Reference to Patient resource
* subject only Reference(PMSIPatient)
* subject 1..1

* encounter MS
//Reference to resource: résumé de sortie standardisé (RSS)
//* encounter only Reference (PMSIEncounterRUM) //To be created!

