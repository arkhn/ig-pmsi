Profile:        PMSIPatient
Parent:         Patient
Id:             pmsi-patient
Title:          "Patient (PMSI)"
Description:    "Profil pour la ressource Patient du PMSI"
* identifier MS // INS (NIR / NIA), 
* name MS // Utilisé dans le cadre de l'identitovigilance pour vérifier l'identité d'une personne, en particulier le nom de naissance
* gender MS // Utilisé dans le cadre de l'identitovigilance pour vérifier l'identité d'une personne
* birthDate MS // Utilisé dans le cadre de l'identitovigilance pour vérifier l'identité d'une personne
* address MS // Code postal, lieu de résidence
* contact.telecom MS
* communication.language MS
* generalPractitioner MS


// A considérer : poids, taille, pathologies, traitements...


// Sources : 
// https://www.atih.sante.fr/sites/default/files/public/content/3695/formats_mco2020_5.xlsx
// https://solidarites-sante.gouv.fr/IMG/pdf/rniv_0_points_essentiels_v1.0_-_decembre_2020.pdf
// http://www.interopsante.org/offres/doc_inline_src/412/HPsante2_5.pdf