Instance: ee-health-certificate-set-consent
InstanceOf: OperationDefinition
Usage: #definition
Description: "Tervisetõendi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'."
* version = "5.0.0"
* name = "EEHealthCertificateSetConsent"
* title = "Tervisetõendi ligipääsude muutmine"
* status = #active
* kind = #operation
* experimental = false
* affectsState = false
* code = #set-consent
* resource = #Composition
* system = false
* type = false
* instance = true
* parameter[+].name = #doctor
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus arstile"
* parameter[=].type = #string
* parameter[+].name = #representative
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus eestkostjale"
* parameter[=].type = #string
