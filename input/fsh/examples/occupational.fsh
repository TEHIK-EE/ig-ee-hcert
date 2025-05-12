Instance: EmploymentExample
InstanceOf: EEHealthCertificateOccupationalEmployment
Title: "Patsiendi töötamine"
Usage: #example
* id = "600"
* status = #final
* code = $SCT#184104002 "Patient occupation"
* performer.display = "Suurepärane OÜ"
* performer.identifier.system = "https://fhir.ee/sid/org/est/br"
* performer.identifier.value = "12345678"
* component[job].valueCodeableConcept = OccupationCS#22122501 "Pediaater"
* component[rate].valueQuantity = 0.75 '1'

Instance: DecisionExample
InstanceOf: EEHealthCertificateDecision
Usage: #inline
* id = "700"
* status = #final
* code = $SCT#419183001 "Practitioner decision status"
* valueCodeableConcept = DecisionCS#2

Instance: MedicalRestrictionExample
InstanceOf: EEHealthCertificateMedicalRestriction
Usage: #inline
* id = "800"
* status = #final
* code = $SCT#146861000181105 "Restriction"
* valueCodeableConcept = RestrictionsCS#891 //Ei sobi töötama üksinda
* note.text = "Öösel võib hulluks minna"

Instance: RiskFactorExample
InstanceOf: EEHealthCertificateWorkRelatedRiskFactor
Usage: #inline
* id = "900"
* status = #final
* code = $SCT#80943009 "Risk factor"
* valueCodeableConcept = RiskFactorCS#A1 "põrutused, üldvibratsioon ja seda põhjustavad seadmed"

Instance: AdditionalConditionExample
InstanceOf: EEHealthCertificateWorkAdditionalCondition
Usage: #inline
* id = "1000"
* status = #final
* code = $SCT#225891002 "Fit for work with certain limitations"
* valueCodeableConcept = WorkAdditionalConditionCS#personal-protective-equipment

Instance: OccupationalHealthCertExample
InstanceOf: EEHealthCertificateOccupational
Title: "Töötervishoiu tervisetõend"
Usage: #example
* id = "1100"
* identifier[0]
  * system = "https://fhir.ee/hcert/health-certificate-number"
  * value = "DOC-12345"
* status = StatusCS#preliminary
* type.coding = $SCT#772786005 "Medical certificate (record artifact)"
* subject = Reference(PatientExample)
* date = "2024-11-05T11:45:29.0437162+00:00"
* author = Reference(PractitionerRoleExample)
* title = "Töötervishoiu tervisekontroll"
* event.period.start = "2024-05-05T00:00:00.000+00:00"
* event.period.end = "2025-11-05T00:00:00.000+00:00"
* contained[author] = PractitionerRoleExample
* contained[employment] = EmploymentExample
* contained[decision] = DecisionExample
* contained[+] = MedicalRestrictionExample
* contained[riskFactor] = RiskFactorExample
* contained[additionalCondition] = AdditionalConditionExample
* section[employer]
  * entry = Reference(EmploymentExample)
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">10006966</div>"
* section[decision]
  * entry = Reference(DecisionExample)
* section[medicalRestriction]
  * entry = Reference(MedicalRestrictionExample)
* section[shortenedReason]
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Arst ei usalda isiku uuringute tulemustele</div>"
* section[rejectReason]
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Raske füüsiline töö, ei sobi selja probleemide tõttu</div>"
* section[changeReason]
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Kirjavea parandus</div>"
* section[cancelReason]
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vale otsus</div>"
* section[suspendReason]
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ootab lisauringute tulemusi</div>"
* section[riskFactors]
  * entry = Reference(RiskFactorExample)
* section[healthDeclaration]
  * entry = Reference(HealthDeclarationExample)
* section[additionalConditions]
  * entry = Reference(AdditionalConditionExample)
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tekst mis kirjeldab lisatingumusi</div>"
* section[employerSuggestions]
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Töötajale on vaja parem valgustus</div>"
* section[employeeSuggestions]
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tööandja peab paigaldama uut valgustust</div>"
