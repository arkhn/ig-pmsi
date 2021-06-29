Profile:        PMSIConditionDPDR
Parent:         Condition
Id:             pmsi-condition-dpdr
Title:          "Diagnostic (PMSI)"
Description:    "Profil pour la ressource condition Diagnostic Principal /Diagnostic Relié du PMSI"
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
// CIM-10 pour Diagnostic principal (DP) ou Diagnostic relié (DR) 
* subject MS
// Reference to Patient resource
* encounter MS
//Reference to resource: résumé de sortie standardisé (RSS) ou  (RUM)?
* note MS
// Optional can be used to store: Une donnée à visée documentaire (DAD) peut être n’importe quelle information : un chiffre, un code d’acte ou de diagnostic ou du langage naturel.