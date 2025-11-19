Instance: OrganizationExample
InstanceOf: Organization
Usage: #example
Description: "Asutuse näidis"
Title: "Asutus PÕHJA-EESTI REGIONAALHAIGLA"
* id = "90006399"
* name = "PÕHJA-EESTI REGIONAALHAIGLA"

Instance: PractitionerExample
InstanceOf: Practitioner
Usage: #example
Description: "Arsti näidis"
Title: "Arst Paavo Lepzig"
* id = "36109255737"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D12345"
* active = true
* name.family = "Lepzig"
* name.given = "Paavo"

Instance: PractitionerRoleExample
InstanceOf: PractitionerRole
Description: "PractitionerRole ressursi näidis"
Usage: #example
* id = "100"
* practitioner = Reference(PractitionerExample)
* organization = Reference(OrganizationExample)

Instance: PatientExample
InstanceOf: EEMPIPatientVerified
Usage: #example
Description: "MPI patsiendi näidis"
Title: "Patsient Taavi Kask"
* id = "200"
* active = true
* identifier[0]
  * system = "https://fhir.ee/sid/pid/est/ni"
  * value = "39406240016"
* name[official]
  * use = #official
  * given = "Taavi"
  * family = "Kask"
* gender = #male

Instance: HealthDeclarationExample
InstanceOf: QuestionnaireResponse
Usage: #example
Description: "Tervisedeklaratsiooni näidis (mõeldud ainult viitamiseks)"
Title: "Tervisedeklaratsioon"
* id = "300"
* status = #completed
* questionnaire = "https://fhir.ee/qre/Questionnaire-123"
* subject = Reference(PatientExample)
