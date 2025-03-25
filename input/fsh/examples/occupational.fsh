Instance: EmploymentExample
InstanceOf: MPIPatientOccupation
Usage: #inline
* id = "employment-800"
* status = #final
* code = $SCT#184104002
* subject = Reference(Patient/pat1)
* effectivePeriod.start = "2013-04-02T09:30:10+01:00"
* component[job].valueCodeableConcept = OccupationCS#22122501 "Pediaater"

Instance: DecisionExample
InstanceOf: EEHealthCertificateDecisionProfile
Usage: #inline
* id = "decision-200"
* status = #final
* code = $SCT#419183001 "Practitioner decision status"
* valueCodeableConcept = EEHealthCertificateDecision#yes

Instance: MedicalRestrictionExample
InstanceOf: EEHealthCertificateMedicalRestriction
Usage: #inline
* id = "restriction-200"
* status = #final
* code = $SCT#246175000 "Limitation"
* valueCodeableConcept = EEHealthCertificateRestriction#no-night-work
* note.text = "Öösel võib hulluks minna"

Instance: RiskFactorExample
InstanceOf: EEHealthCertificateWorkRelatedRiskFactor
Usage: #inline
* id = "riskFactor-200"
* status = #final
* code = $SCT#80943009 "Risk factor"
* valueCodeableConcept = WorkRelatedRestrictionsCS#A1 "põrutused, üldvibratsioon ja seda põhjustavad seadmed"


Instance: AdditionalConditionExample
InstanceOf: EEHealthCertificateWorkAdditionalCondition
Usage: #inline
* id = "additional-200"
* status = #final
* code = $SCT#225891002 "Fit for work with certain limitations"
* valueCodeableConcept = EEHealthCertificateOccupationalAdditionalCondition#safety-gear "Isikukaitsevahendid"

Instance: OccupationalHealthCertExample
InstanceOf: EEHealthCertificateOccupational
Title: "Töötervishoiu tervisetõend"
Usage: #example
* id = "health-certificate-occupational-100"
* identifier[0]
  * system = "https://fhir.ee/hcert/health-certificate-number"
  * value = "DOC-12345"
* status = http://hl7.org/fhir/composition-status#preliminary
* type.coding = $SCT#772786005 "Medical certificate (record artifact)"
* subject = Reference(PatientExample)
* date = "2024-11-05T11:45:29.0437162+00:00"
* author = Reference(PractitionerRoleExample)
* title = "Töötervishoiu tervisekontroll"
* event.period.start = "2024-11-05T00:00:00.000+00:00"
* event.period.end = "2025-11-05T00:00:00.000+00:00"
* contained[author] = PractitionerRoleExample
* contained[+] = EmploymentExample
* contained[+] = DecisionExample
* contained[+] = MedicalRestrictionExample
* contained[+] = RiskFactorExample
* contained[+] = AdditionalConditionExample
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
