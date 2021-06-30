Profile:        PMSIEncounterRUM
Parent:         Encounter
Id:             pmsi-encounter-rum
Title:          "Encounter RUM (PMSI)"
Description:    "Profil pour la ressource encounter RUM du PMSI"
* identifier MS
* class MS
// codes from https://www.atih.sante.fr/codes-mouvements specifiying patient moves
* type MS
// codes from https://www.ameli.fr/accueil-de-la-ccam/trouver-un-acte/consultation-par-chapitre.php
* subject MS
// reference to Patient resource
* period MS
//Date d'entrée dans l'unité médicale & Date de sortie de l'unité médicale
* diagnosis.condition MS
* diagnosis.condition only Reference(PMSIConditionDPDR)
// reference to Condition resource, it should be CIM-10 coded
* diagnosis.use MS
* diagnosis.use from PMSIDiagnosis
// Primary or Secondary Diagnosis (code systeme diagnostic DPDSDAS)
* hospitalization.admitSource MS
* hospitalization.admitSource from PMSIMovementEntry
// Provenance (si mode d’entrée est mutation ou transfert)	
* hospitalization.dischargeDisposition MS
* hospitalization.dischargeDisposition from PMSIMovementExit
// Destination (si mode de sortie est mutation ou transfert)	
* location.location MS
* location.location only Reference(PMSILocation)
// reference to pmsi-location resource?
* serviceProvider MS
// Reference to location Unité Médical (UM)
* partOf MS
//Reference to resource encounter: résumé de sortie standardisé (RSS)