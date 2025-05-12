Profile: EEHealthCertificateContainedObservation
Parent: Observation
Id: ee-health-certificate-contained-observation
Title: "Tervisetõendi contained Observation"
Description: "Abstraaktne profiil Tervisetõendi contained Observation ressurside kirjeldamiseks"
* ^experimental = false
* ^abstract = true
* referenceRange ..0
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
* dataAbsentReason ..0
* interpretation ..0
* bodySite ..0
* bodyStructure ..0
* method ..0
* specimen ..0
* device ..0
* identifier ..0
* instantiates[x] ..0

* status = #final
* value[x] only CodeableConcept

Profile: EEHealthCertificateMedicalRestriction
Parent: EEHealthCertificateContainedObservation
Id: ee-health-certificate-medical-restriction
Title: "Meditsiiniline piirang"
Description: "Observation ressurss mis kirjeldab meditsiinilisi piiranguid. Kasutatud contained ressurisina"
* ^experimental = false
* code = $SCT#146861000181105 "Restriction"
* value[x] 1..1
* value[x] ^short = "Meditsiiniline piirang"
* note 0..1 MS
* note ^short = "Kommentaar koos piirangu täpsustusega"


Profile: EEHealthCertificateDecision
Parent: EEHealthCertificateContainedObservation
Id: ee-health-certificate-decision
Title: "Tervisetõendi otsus"
Description: "Observation ressurss mis kirjeldab tervisetõendi otsuse. Kasutatud contained ressurisina"
* ^experimental = false
* code = $SCT#419183001 "Practitioner decision status"
* value[x] 1..1
* value[x] ^short = "Otsus"
* value[x] from DecisionVS (required)
* note 0..0


Profile: EEHealthCertificateWorkAdditionalCondition
Parent: EEHealthCertificateContainedObservation
Id: ee-health-certificate-work-additional-condition
Title: "Püsiva töövõime säilitamiseks vajalikud lisatingimused"
Description: "Observation ressurss mis kirjeldab püsiva töövõime säilitamiseks vajalikud lisatingimused. Kasutatud contained ressurisina"
* ^experimental = false
* code = $SCT#225891002 "Fit for work with certain limitations"
* value[x] 1..1
* value[x] ^short = "Lisatingimus"
* value[x] from WorkAdditionalConditionVS (required)
* note 0..0

Profile: EEHealthCertificateWorkRelatedRiskFactor
Parent: EEHealthCertificateContainedObservation
Id: ee-health-certificate-work-related-risk-factor
Title: "Tööst olenevad ohutegurid"
Description: "Observation ressurss mis kirjeldab tööst olenevad ohutegurid. Kasutatud contained ressurisina."
* ^experimental = false
* code = $SCT#80943009 "Risk factor"
* value[x] 1..1
* value[x] ^short = "Ohutegur"
* value[x] from RiskFactorVS (required)
* note 0..0
