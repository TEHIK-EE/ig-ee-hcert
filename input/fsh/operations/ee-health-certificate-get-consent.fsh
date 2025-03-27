Instance: ee-health-certificate-get-consent
InstanceOf: OperationDefinition
Usage: #definition
Description: "Tervisetõendi ligipääsude päring"
* name = "EEHealthCertificateGetConsent"
* title = "Tervisetõendi ligipääsude päring"
* status = #active
* kind = #operation
* experimental = false
* affectsState = false
* code = #get-consent
* resource = #Composition
* system = false
* type = false
* instance = true
* parameter[+].name = #doctor
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus arstile"
* parameter[=].type = #string
* parameter[+].name = #representative
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus eestkostjale"
* parameter[=].type = #string
