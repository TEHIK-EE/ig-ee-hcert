Profile: EEHealthCertificateDriver
Parent: EEHealthCertificate
Id: ee-health-certificate-driver
Title: "Mootosõidukijuhi tervisetõend"
Description: "Mootosõidukijuhi tervisetõend"
* ^experimental = false
* category from EEHealthCertificateDriverCategoryVS (required)
* event.period ^short = "Mootosõidukijuhi tervisetõendi kehtivus"
* contained[medicalRestriction] ^short = "Meditsiinilised piirangud"
* contained[medicalRestriction].component.code from DriverMedicalRestrictionVS (required)

* contained[decision] ^short = "Otsus"
* contained[decision].value[x] from DriverDecisionVS (required)

* obeys ee-hcert-driver-period-required

Invariant: ee-hcert-driver-period-required
Description: "Mootosõidukijuhi terivsetõendi kehtivusaeg on kohustuslik, kui tegemist on positiivse otsusega."
Severity: #error
Expression: "contained.where($this.ofType(Observation)).where(code.coding.where(system='http://snomed.info/sct' and code='419183001').exists()).value.ofType(CodeableConcept).coding.where(system='http://snomed.info/sct' and (code='171353001' or code='156861000181108')).exists() implies event.period.exists()"
