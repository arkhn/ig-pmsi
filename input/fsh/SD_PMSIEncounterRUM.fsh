Profile:        PMSIEncounterRUM
Parent:         Encounter
Id:             pmsi-encounter-rum
Title:          "Encounter RUM"
Description:    "Profil pour la ressource Encounter pour le Résumé d'Unité Médicale du PMSI"
* identifier MS
* class MS
// codes from https://www.atih.sante.fr/codes-mouvements specifiying patient moves
* type MS
* type from PMSIModeEntryCS (required)

* subject MS
// reference to Patient resource
* period MS
//Date d'entrée dans l'unité médicale & Date de sortie de l'unité médicale
* diagnosis.condition MS
* diagnosis.condition only Reference(PMSIConditionDPDR)
// reference to Condition resource, it should be CIM-10 coded
* diagnosis.use MS
* diagnosis.use from PMSIDiagnosis (required)
// Primary or Secondary Diagnosis (code systeme diagnostic DPDSDAS)
* hospitalization.admitSource MS
* hospitalization.admitSource from PMSIMovementEntry (required)
// Provenance (si mode d’entrée est mutation ou transfert)	
* hospitalization.dischargeDisposition MS
* hospitalization.dischargeDisposition from PMSIMovementExit (required)
// Destination (si mode de sortie est mutation ou transfert)	
* location.location MS
// TODO add ref to unité médicale (UM)profile
// reference to pmsi-location resource?
* serviceProvider MS
// Reference to location Unité Médical (UM)
* partOf MS
//TODO: Reference to resource encounter: résumé de sortie standardisé (RSS)