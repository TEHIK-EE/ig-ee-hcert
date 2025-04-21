Profile: EEHealthCertificateOccupationalEmployment
Parent: EEHealthCertificateContainedObservation
Id: ee-health-certificate-occupational-employment
Title: "Töötervishoiu tervisetõendi patsiendi töötamine"
Description: "Töötervishoiu tervisetõendi profiil patsiendi töötamise kirjeldamiseks. Kasutatud contained ressurisina"
* status = #final
* code.coding 1..1
* code.coding = $SCT#184104002 "Patient occupation"
* performer 1..1
* performer only Reference(Organization)
* performer.display 1..1
* performer.identifier 1..1
* performer ^short = "Tööandja asutus"
* component 0..2
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains job 0..1 MS and rate 0..1
* component[job].code = $SCT#160922003 "Job details"
* component[job].value[x] 1..1
* component[job].value[x] only CodeableConcept
* component[job].valueCodeableConcept from OccupationVS
* component[job].valueCodeableConcept ^short = "Tööamet"
* component[rate] ^short = "Lepinguline töökoormus"
* component[rate].code = $SCT#224374003 "Regularity of work"
* component[rate].value[x] 1..1
* component[rate].value[x] only Quantity
* component[rate].value[x].unit = UCUM#1
* component[rate].value[x].comparator ..0
* component[rate].valueQuantity ^short = "Töökoormus (0..1]"
