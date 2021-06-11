Profile:        PMSIConditionDPDR
Parent:         Condition
Id:             pmsi-condition-dpdr
Title:          "Unité fonctionnelle (PMSI)"
Description:    "Profil pour la ressource condition Diagnostic Principal /Diagnostic Relié du PMSI"
* identifier MS
* severity MS
// Indice de gravité simplifié (IGS II) https://www.atih.sante.fr/grille-de-cotation-du-score-igs2
* code
// Diagnostic principal (DP) ou Diagnostic relié (DR) CIM-10
* subject MS
// Reference to Patient resource
* encounter MS
//Reference to resource: résumé de sortie standardisé (RSS)
* note
// Optional can be used to store: Une donnée à visée documentaire (DAD) peut être n’importe quelle information : un chiffre, un code d’acte ou de diagnostic ou du langage naturel.