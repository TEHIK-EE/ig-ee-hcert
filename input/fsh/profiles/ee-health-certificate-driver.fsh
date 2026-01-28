Profile: EEHealthCertificateDriver
Parent: EEHealthCertificate
Id: ee-health-certificate-driver
Title: "Mootosõidukijuhi tervisetõend"
Description: "Mootosõidukijuhi tervisetõend"
* ^experimental = false
* category from EEHealthCertificateDriverCategoryVS (required)

* contained[medicalRestriction] ^short = "Meditsiinilised piirangud"
* contained[medicalRestriction].component.code from DriverMedicalRestrictionVS (required)

* contained[decision] ^short = "Otsus"
* contained[decision].value[x] from DriverDecisionVS (required)
