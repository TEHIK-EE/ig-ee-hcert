Instance: ee-health-certificate-pdf
InstanceOf: OperationDefinition
Usage: #definition
Description: "FHIR operatsioon PDF dokumendi generereerimiseks tervisetõend (Composition) ressursi põhjal"
* version = "5.0.0"
* name = "EEHealthCertificatePdf"
* title = "Tervisetõendi PDF genereerimine"
* status = #active
* kind = #operation
* experimental = false
* affectsState = false
* code = #pdf
* resource = #Composition
* system = false
* type = false
* instance = true
* parameter[0].name = #role
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Isiku roll kelle jaoks on PDF genereeritud"
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "PDF dokument binaarses formaadis"
* parameter[=].type = #Binary


Instance: ee-health-certificate-get-consent
InstanceOf: OperationDefinition
Usage: #definition
Description: "Tervisetõendi ligipääsude päring"
* version = "5.0.0"
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
* parameter[+].name = #patient
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus patsiendile"
* parameter[=].type = #string
* parameter[+].name = #doctor
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus arstile"
* parameter[=].type = #string
* parameter[+].name = #representative
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus eestkostjale"
* parameter[=].type = #string

Instance: ee-health-certificate-set-consent
InstanceOf: OperationDefinition
Usage: #definition
Description: "Tervisetõendi ligipääsude muutmine"
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
* parameter[+].name = #patient
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus patsiendile"
* parameter[=].type = #string
* parameter[+].name = #doctor
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus arstile"
* parameter[=].type = #string
* parameter[+].name = #representative
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus eestkostjale"
* parameter[=].type = #string
