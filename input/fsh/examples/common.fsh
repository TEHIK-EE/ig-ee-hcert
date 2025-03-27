Instance: OrganizationExample
InstanceOf: Organization
Usage: #example
Title: "Asutus PÕHJA-EESTI REGIONAALHAIGLA"
* id = "90006399"
* name = "PÕHJA-EESTI REGIONAALHAIGLA"

Instance: PractitionerExample
InstanceOf: Practitioner
Usage: #example
Title: "Arst Paavo Lepzig"
* id = "36109255737"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D12345"
* active = true
* name.family = "Lepzig"
* name.given = "Paavo"

Instance: PractitionerRoleExample
InstanceOf: PractitionerRole
Usage: #example
* id = "author-200"
* practitioner = Reference(PractitionerExample)
* organization = Reference(OrganizationExample)

Instance: PatientExample
InstanceOf: EEMPIPatientVerified
Usage: #example
Title: "Patsient Taavi Kask"
* id = "300"
* active = true
* identifier[0]
  * system = "https://fhir.ee/sid/pid/est/ni"
  * value = "39406240016"
* name
  * use = #official
  * given = "Taavi"
  * family = "Kask"
* gender = #male

Instance: HealthDeclarationExample
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Tervisedeklaratsioon"
* id = "500"
* status = #completed
* questionnaire = "https://fhir.ee/qre/Questionnaire-123"
* subject = Reference(PatientExample)
