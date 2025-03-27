Instance: DecisionDriverExample
InstanceOf: EEHealthCertificateDecision
Usage: #inline
* id = "400"
* status = #final
* code = $SCT#419183001 "Practitioner decision status"
* valueCodeableConcept = DecisionCS#1

Instance: DriverHealthCertExample
InstanceOf: EEHealthCertificateDriver
Title: "Mootorsõiduki juhtimise tervisetõend"
Usage: #example
* id = "500"
* identifier[0]
  * system = "https://fhir.ee/hcert/health-certificate-number"
  * value = "HCERT-321"
* status = StatusCS#preliminary
* category = $HDC#driver-group-I
* type.coding = $SCT#772786005 "Medical certificate (record artifact)"
* subject = Reference(PatientExample)
* date = "2024-11-05T11:45:29.0437162+00:00"
* author = Reference(PractitionerRoleExample)
* title = "Mootorsõiduki juhtimise tervisetõend"
* event.period.start = "2024-11-05T00:00:00.000+00:00"
* event.period.end = "2025-11-05T00:00:00.000+00:00"
* contained[author] = PractitionerRoleExample
* contained[+] = DecisionDriverExample
* section[decision]
  * entry = Reference(DecisionDriverExample)
* section[rejectReason]
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ei tunne värve</div>"
* section[healthDeclaration]
  * entry = Reference(HealthDeclarationExample)
