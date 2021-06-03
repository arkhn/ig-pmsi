Profile:        OsirisMolecularSequence
Parent:         MolecularSequence
Id:             osiris-ms
Title:          "Osiris molecular sequence"
Description:    "Osiris molecular sequence"
// Extensions
* extension contains dna-origin named dna-origin 0..1
* extension[dna-origin] MS
* extension[dna-origin] ^short = "DNA Origin"



Extension:  DNAOrigin
Id: dna-origin
Title: "DNA Origin"
Description: "DNA origin"
* ^publisher = "Arkhn"
* value[x] only CodeableConcept
* valueCodeableConcept from GeneticsOriginVS (required)
