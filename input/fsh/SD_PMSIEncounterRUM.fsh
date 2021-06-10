Profile:        PMSIEncounterRUM
Parent:         Encounter
Id:             pmsi-encounter-rum
Title:          "Unité fonctionnelle (PMSI)"
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
// reference to Condition resource, it should be CIM-10 coded
* diagnosis.use MS
// Primary or Secondary Diagnosis 
* hospitalization.admitSource MS
// Provenance (si mode d’entrée est mutation ou transfert)	
* hospitalization.dischargeDisposition MS
// Destination (si mode de sortie est mutation ou transfert)	
* location.location MS
// reference to pmsi-location resource?
* serviceProvider MS
// Unité Médical (UM)
* partOf MS
//Reference to resource: résumé de sortie standardisé(RSS)