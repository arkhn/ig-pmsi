Profile:        PMSIOrganizationUM
Parent:         Organization
Id:             pmsi-OrganizationUM
Title:          "Unité médicale (PMSI)"
Description:  "Profil pour la ressource Organization du PMSI permettant de définir une unité médicale."
* ^publisher = "Arkhn"
* identifier MS // Définit par l'établissement
* type MS
* type ^definition = "Type of authorization."
* type from AUTORIZATION_TYPE (required) // Nomenclature UM
* partOf MS
* partOf only Reference (PMSIOrganization)