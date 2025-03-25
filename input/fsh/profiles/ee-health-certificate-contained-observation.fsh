Profile: EEHealthCertificateContainedObservation
Parent: Observation
Id: ee-health-certificate-contained-observation
Title: "Health certificate contained Observation"
Description: "Observation profile with limited fields to use in Health certificate contained resources"
* ^experimental = false
* ^abstract = true
* referenceRange ..0 //related to https://github.com/HL7/fhir-ig-publisher/issues/1018
* implicitRules ..0
* contained ..0
* modifierExtension ..0
* basedOn ..0
* triggeredBy ..0
* partOf ..0
* category ..0
* subject ..0
* focus ..0
* encounter ..0
* effective[x] ..0
* issued ..0
* performer ..0
* dataAbsentReason ..0
* interpretation ..0
* bodySite ..0
* bodyStructure ..0
* method ..0
* specimen ..0
* device ..0
* component ..0
* identifier ..0
* instantiates[x] ..0

* status = #final
* value[x] only CodeableConcept

Profile: EEHealthCertificateMedicalRestriction
Parent: EEHealthCertificateContainedObservation
Id: ee-health-certificate-medical-restriction
Title: "Meditsiiniline piirang"
Description: "Observation ressurss mis kirjeldab meditsiinilisi piiranguid. Kasutatud contained ressurisina."
* ^experimental = false
* code = $SCT#246175000 "Limitation"
* value[x] 1..1
* value[x] ^short = "Meditsiiniline piirang"
* note 0..1 MS
* note ^short = "Kommentaar koos piirangu täpsustusega"


//FIXME name
Profile: EEHealthCertificateDecisionProfile
Parent: EEHealthCertificateContainedObservation
Id: ee-health-certificate-decision
Title: "Tervisetõendi otsus"
Description: "Observation ressurss mis kirjeldab tervisetõendi otsuse. Kasutatud contained ressurisina."
* ^experimental = false
* code = $SCT#419183001 "Practitioner decision status"
* value[x] 1..1
* value[x] ^short = "Otsus"
* value[x] from EEHealthCertificateDecisionVS (required)


Profile: EEHealthCertificateWorkAdditionalCondition
Parent: EEHealthCertificateContainedObservation
Id: ee-health-certificate-work-additional-condition
Title: "Püsiva töövõime säilitamiseks vajalikud lisatingimused"
Description: "Observation ressurss mis kirjeldab püsiva töövõime säilitamiseks vajalikud lisatingimused. Kasutatud contained ressurisina."
* ^experimental = false
* code = $SCT#225891002 "Fit for work with certain limitations"
* value[x] 1..1
* value[x] ^short = "Lisatingimus"
* value[x] from EEHealthCertificateOccupationalAdditionalConditionVS (required)

Profile: EEHealthCertificateWorkRelatedRiskFactor
Parent: EEHealthCertificateContainedObservation
Id: ee-health-certificate-work-related-risk-factor
Title: "Tööst olenevad ohutegurid"
Description: "Observation ressurss mis kirjeldab tööst olenevad ohutegurid. Kasutatud contained ressurisina."
* ^experimental = false
* code = $SCT#80943009 "Risk factor"
* value[x] 1..1
* value[x] ^short = "Ohutegur"
* value[x] from RiskFactorsVS (required)
