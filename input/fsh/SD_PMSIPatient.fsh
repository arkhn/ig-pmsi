Profile:        PMSIPatient
Parent:         Patient
Id:             pmsi-patient
Title:          "Patient PMSI"
Description:    "Profil pour la ressource Patient du PMSI"
* ^publisher = "Arkhn"

* identifier MS // INS (NIR / NIA), 
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on the identifier.system pattern"

* identifier contains INS-NIR 0..1 MS 
                and INS-NIA 0..1 MS
                and INS-C 0..1 MS
                and IPP 0..1 MS

* identifier[INS-NIR].use = #official
* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[INS-NIR].type.text = "Numéro d’Inscription au Répertoire"
* identifier[INS-NIR].value 1..1

* identifier[INS-NIA].use = #temp
* identifier[INS-NIA].system = "urn:oid:1.2.250.1.213.1.4.9"
* identifier[INS-NIA].type.text = "Numéro d'Identifiant d'Attente"
* identifier[INS-NIA].value 1..1

* identifier[INS-C].use = #secondary
* identifier[INS-C].system = "urn:oid:1.2.250.1.213.1.4.2"
* identifier[INS-C].type.text = "INS Calculé"
* identifier[INS-C].value 1..1

* identifier[IPP].use = #usual
* identifier[IPP].type.text = "Identifiant Permanent du Patient"
* identifier[IPP].value 1..1

// systems from https://esante.gouv.fr/sites/default/files/media_entity/documents/asip_referentiel_identifiant_national_sante-liste-des-oid-des-autorites-d-affectation-des-ins_v0.1.pdf

* name MS // Utilisé dans le cadre de l'identitovigilance pour vérifier l'identité d'une personne, en particulier le nom de naissance
* name ^short = "Utilisé dans le cadre de l'identitovigilance pour vérifier l'identité d'une personne"

* gender 1..1 MS // Obligatoire: utilisé dans le cadre de l'identitovigilance pour vérifier l'identité d'une personne
* gender ^short = "Utilisé dans le cadre de l'identitovigilance pour vérifier l'identité d'une personne"
* birthDate 1..1 MS // Obligatoire: Utilisé dans le cadre de l'identitovigilance pour vérifier l'identité d'une personne
* birthDate ^short = "Utilisé dans le cadre de l'identitovigilance pour vérifier l'identité d'une personne"
* address MS // Code postal, lieu de résidence

* contact.telecom MS
* communication.language MS
* generalPractitioner MS

// TODO: French name, French address,... 
// PMSI : identifiant calculé
// Rajouter une description pour indiquer les champs indispensables au calcul de l'INS-C, rm 1.., 
// Slice TMP ?

// A considérer : poids, taille, pathologies, traitements...

// Sources : 
// https://www.atih.sante.fr/sites/default/files/public/content/3695/formats_mco2020_5.xlsx
// https://solidarites-sante.gouv.fr/IMG/pdf/rniv_0_points_essentiels_v1.0_-_decembre_2020.pdf
// http://www.interopsante.org/offres/doc_inline_src/412/HPsante2_5.pdf