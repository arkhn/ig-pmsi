Profile:        PMSIGHM
Parent:         Observation
Id:             pmsi-groupe-homogene-malades
Title:          "Observation Groupes homogènes de Malades (PMSI)"
Description:    "Observation sur le Groupe Homogène de Malades (GHM) d'un patiens (PMSI)"

* identifier MS
//value= N° de Groupage


* category MS
// Code majeur de diagnostic: https://www.atih.sante.fr/manuel-des-ghm-version-11d
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
* encounter only Reference(PMSIEncounterRSS)

