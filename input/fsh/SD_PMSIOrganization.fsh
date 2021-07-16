Profile:        PMSIOrganization
Parent:         Organization
Id:             pmsi-organization
Title:          "Etablissement de santé"
Description:    "Profil pour la ressource Organization du PMSI permettant de définir un établissement hospitalier."
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
* identifier[FinessEJ].type.text = "FINESS Juridique" 
* identifier[FinessEJ].system = "http://fhir.arkhn.com/FinessEJ" // Temporary, should be binded with URI finess juridique
* identifier[FinessEG].type.text = "FINESS Géographique" 
* identifier[FinessEG].system = "http://fhir.arkhn.com/FinessEG" // Temporary, should be binded with URI finess geographique

* type MS
* type ^definition = "The kind(s) of organization that this is."
* type from CAT (required) 
* type 1..1 

* name MS
* name ^definition = "A name associated with the organization."
* telecom MS
* telecom ^definition = "A contact detail for the organization."
* address MS
* address ^definition = "An address for the organization."
* partOf MS
* partOf ^definition = "The organization of which this organization forms a part."