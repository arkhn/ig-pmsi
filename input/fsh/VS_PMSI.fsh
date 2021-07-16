ValueSet: PMSIDiagnosis
Title: "Type de diagnostic Value Set"
Description: "Type de diagnostics pour le PMSI"
* PMSICS#DP	"Diagnostic principal"
* PMSICS#DR	"Diagnostic relié"
* PMSICS#DASS	"Diagnostic associé significatif" 
* PMSICS#DASC	"Diagnostic associé par convention" 
// * include codes from system http://fhir.arkhn.com/finess


ValueSet: PMSIMovementEntry
Title: "Type d'entrée Value Set"
Description: "Type d'entrée à l'hôpital pour le PMSI"
* EntryCS#1	"Retour prestation de soins dans une unité de soins de courte durée d'un autre établissement"
* EntryCS#2	"Retour prestation de soins dans une unité de soins de suite et de réadaptation d'un autre établissement"
* EntryCS#3	"Retour prestation de soins dans une unité de soins de longue durée d'un autre établissement"
* EntryCS#4	"Retour prestation de soins dans une unité de soins de psychiatrie d'un autre établissement"
* EntryCS#61	"Par mutation depuis une unité de soins de courte durée"
* EntryCS#62	"Par mutation depuis une unité de soins de suite ou de réadaptation"
* EntryCS#63	"Par mutation depuis une unité de soins de longue durée"
* EntryCS#64	"Par mutation depuis une unité de psychiatrie"
* EntryCS#66	"Par mutation depuis une unité d'hospitalisation à domicile"
* EntryCS#71	"Par transfert depuis une unité de soins de courte durée"
* EntryCS#72	"Par transfert depuis une unité de soins de suite ou de réadaptation"
* EntryCS#73	"Par transfert depuis une unité de soins de longue durée"
* EntryCS#74	"Par transfert depuis une unité de psychiatrie"
* EntryCS#76	"Par transfert depuis une unité d'hospitalisation à domicile"
* EntryCS#8 "Du domicile"
* EntryCS#85	"Avec passage par le service d'accueil des urgences"
* EntryCS#87	"D'une structure d'hébergement médico-sociale"

ValueSet: PMSIMovementExit
Title: "Type de sortie Value Set"
Description: "Type de sorties à l'hôpital pour le PMSI"
* ExitCS#1	"Pour prestation de soins dans une unité de soins de courte durée d'un autre établissement"
* ExitCS#2	"Pour prestation de soins dans une unité de soins de suite et de réadaptation d'un autre établissement"
* ExitCS#3	"Pour prestation de soins dans une unité de soins de longue durée d'un autre établissement"
* ExitCS#4	"Pour prestation de soins dans une unité de soins de psychiatrie d'un autre établissement"
* ExitCS#61	"Par mutation vers une unité de soins de courte durée"
* ExitCS#62	"Par mutation vers une unité de soins de suite ou de réadaptation"
* ExitCS#63	"Par mutation vers une unité de soins de longue durée"
* ExitCS#64	"Par mutation vers une unité de psychiatrie"
* ExitCS#66	"Par mutation vers une unité d'hospitalisation à domicile"
* ExitCS#71	"Par transfert vers une unité de soins de courte durée"
* ExitCS#72	"Par transfert vers une unité de soins de suite ou de réadaptation"
* ExitCS#73	"Par transfert vers une unité de soins de longue durée"
* ExitCS#74	"Par transfert vers une unité de psychiatrie"
* ExitCS#76	"Par transfert vers une unité d'hospitalisation à domicile"
* ExitCS#8	"Vers le domicile"
* ExitCS#87	"Vers une structure d'hébergement médico-sociale"
* ExitCS#9	"Par décès"


ValueSet: PMSIModeEntryCS
Title: "Mode d'entrée à l'hôpital Value Set"
Description: "Différents modes d'entrée dans l'unité médicale à destination du PMSI."
* ModeEntryCS#6  "Mutation"
* ModeEntryCS#7  "Transfert définitif"
* ModeEntryCS#0  "Transfert provisoire"
* ModeEntryCS#8  "Domicile"
* ModeEntryCS#N  "Naissance"

ValueSet: PSMIActeMedical
Title: "Classification Commune des Actes Médicaux Value Set"
Description: "Classification Commune des Actes Médicaux (CCAM)"
* include codes from system CCAM