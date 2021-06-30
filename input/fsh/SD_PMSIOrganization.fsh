Profile:        PMSIOrganization
Parent:         Organization
Id:             pmsi-organization
Title:          "Etablissement de santé (PMSI)"
Description:    "Profil pour la ressource organization du PMSI"
* ^publisher = "Arkhn"
* identifier MS
// FINESS identifier : entité juridique, géographique, siret ... avec slices
* identifier ^slicing.discriminator.type = #pattern 
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on the identifier.system pattern" 
* identifier contains
    FinessEJ 0..1 and
    FinessEG 0..1 
* identifier[FinessEJ].type.text = "FINESS Juridique" // Binding URI Finess juridique
* identifier[FinessEJ].system = "http://fhir.arkhn.com/FinessEJ"
* identifier[FinessEG].type.text = "FINESS Géographique" // Binding URI Finess géographique
* identifier[FinessEG].system = "http://fhir.arkhn.com/FinessEG"

* type MS
* type ^definition = "The kind(s) of organization that this is."
* include codes from system "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite/TRE_R02-SecteurActivite-FHIR.json"

* name MS
* name ^definition = "A name associated with the organization."
* telecom MS
* telecom ^definition = "A contact detail for the organization."
* address MS
* address ^definition = "An address for the organization."
* partOf 
* partOf ^definition = "The organization of which this organization forms a part."