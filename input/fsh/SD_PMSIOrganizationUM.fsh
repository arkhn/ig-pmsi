Profile:        PMSIOrganizationUM
Parent:         Organization
Id:             pmsi-OrganizationUM
Title:          "Unité médicale (PMSI)"
Description:  "Profil pour la ressource OrganizationUM du PMSI"
* ^publisher = "Arkhn"
* identifier MS // Définit par l'établissement
* type MS
* type ^definition = "The kind(s) of organization that this is." // Type d'autorisation
* type from AUTORIZATION_TYPE (required) // Nomenclature UM
* partOf MS
* partOf ^definition = "The organization of which this organization forms a part."
* partOf only Reference (PMSIOrganization)