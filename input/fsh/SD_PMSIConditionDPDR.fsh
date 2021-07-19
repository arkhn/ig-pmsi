Profile:        PMSIConditionDPDR
Parent:         Condition
Id:             pmsi-condition-dpdr
Title:          "Diagnostic"
Description:    "Profil pour la ressource condition Diagnostic Principal / Diagnostic Relié du PMSI"
* ^publisher = "Arkhn"
* identifier MS
* category MS
// Value set Condition Category: Diagnostic Principal (DP), Diagnostic Relie (DR) ou Diagnostic Associé (DAS)

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "system"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on the category.system pattern"

* category contains diagnosis-type 1..1 MS 
* category[diagnosis-type] ^short = "DP | DR | DASS | DASC"
* category[diagnosis-type] from PMSIDiagnosis (required)


* severity MS
// Reference to resource Observation Indice de gravité simplifié (IGS II) 

* code MS
* code ^definition = "Code from CIM-10 for PMSI use defined by ATIH"
* code from ICD10FR (required)
* code 1..1


* subject MS
// Reference to Patient resource
* subject only Reference(PMSIPatient)
* subject 1..1

* encounter MS
//Reference to resource: résumé de sortie d'unité médicale (RUM)
* encounter only Reference (PMSIEncounterRUM)

* note MS
* note ^short = "Donnée à visée documentaire (DAD)"
// Optional can be used to store: Une donnée à visée documentaire (DAD) peut être n’importe quelle information : un chiffre, un code d’acte ou de diagnostic ou du langage naturel.