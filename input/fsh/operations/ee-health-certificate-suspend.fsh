Instance: ee-health-certificate-suspend
InstanceOf: OperationDefinition
Usage: #definition
Description: "Tervisetõendi peatamise operatsioon"
* name = "EEHealthCertificateSuspend"
* title = "Tervisetõendi peatamine"
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
* parameter[=].documentation = "Peatamise põhjus"
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Uuendatud ressurss"
* parameter[=].type = #Composition
