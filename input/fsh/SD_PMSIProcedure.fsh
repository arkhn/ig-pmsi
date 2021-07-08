Profile:        PMSIProcedure
Parent:         Procedure
Id:             pmsi-procedure
Title:          "Acte Médical (PMSI)"
Description:    "Profil pour la ressource Procedure du PMSI permettant de définir les actes médicaux. 

« Les actes médicaux décrits par la CCAM sont les actes professionnels relevant de la compétence
des membres des seules professions médicales, définies à l’article L4111-1 du Code de la Santé publique.
Selon les versions de publication, le champ d’application de la CCAM peut être restreint en fonction de la
qualification des professionnels concernés ou la nature des actes décrits.
On entendra par acte médical tout « acte dont la réalisation par des moyens verbaux, écrits,
physiques ou instrumentaux est effectué par un membre d’une profession médicale dans le cadre de son
exercice et les limites de sa compétence » (définition de la Commission de terminologie et de néologie
pour le domaine de la santé, séance du 14 juin 2001).» (source : 'https://www/aith.sante.fr')"
* ^publisher = "Arkhn"
* identifier MS
* category MS
// Fix value Procedure Category: CCAM Classification Commune des Actes Médicaux
//* category.coding.code = #CCAM
//* category.coding.display = "Classification Commune de Actes Médicaux"
* category ^short = "CCAM"
* category from PSMIActeMedical (required)

* code MS
// Value set for Code : Code CCAM 
* code ^definition = "A code from CCAM (french classification for medical acts)"
* code from CCAM (required)

* subject MS
// Reference to Patient resource
* encounter MS
//Reference to resource: résumé d'unité médicale (RUM)
* encounter only Reference (PMSIEncounterRUM)