Instance: ee-health-certificate-cancel
InstanceOf: OperationDefinition
Usage: #definition
Description: "Tervisetõendi tühistamise operatsioon"
* name = "EEHealthCertificateCancel"
* title = "Tervisetõendi tühistamine"
* status = #active
* kind = #operation
* experimental = false
* affectsState = true
* code = #cancel
* resource = #Composition
* system = false
* type = false
* instance = true
* parameter[+].name = #reason
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Tühistamise põhjus"
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Uuendatud ressurss"
* parameter[=].type = #Composition
