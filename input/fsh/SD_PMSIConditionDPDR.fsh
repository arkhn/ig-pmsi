Profile:        PMSIConditionDPDR
Parent:         Condition
Id:             pmsi-condition-dpdr
Title:          "Unité fonctionnelle (PMSI)"
Description:    "Profil pour la ressource condition Diagnostic Principal /Diagnostic Relié du PMSI"
* identifier MS
* category MS
// Value set Condition Category: Diagnostic Principal (DP), Diagnostic Relie (DR) ou Diagnostic Associé (DAS)
* severity MS
// Reference to resource Observation Indice de gravité simplifié (IGS II) 
* code MS
// Diagnostic principal (DP) ou Diagnostic relié (DR) CIM-10
* subject MS
// Reference to Patient resource
* encounter MS
//Reference to resource: résumé de sortie standardisé (RSS)
//* note 
// Optional can be used to store: Une donnée à visée documentaire (DAD) peut être n’importe quelle information : un chiffre, un code d’acte ou de diagnostic ou du langage naturel.