Profile: EEHealthCertificateOccupational
Parent: EEHealthCertificate
Id: ee-health-certificate-occupational
Title: "Töötervishoiu tervisetõend"
Description: "Töötervishoiu tervisetõendi baasprofiil"
* ^experimental = false
* category = $HDC#occupational
* section contains riskFactors 0..1 and employer 0..1 and additionalConditions 0..1 and employerSuggestions 0..1 and employeeSuggestions 0..1
* section[riskFactors] ^short = "Tööst olenevad ohutegurid"
* section[riskFactors].code = $HC_SECTION#risk-factors
* section[riskFactors].entry 1..*
* section[riskFactors].entry only Reference(EEHealthCertificateWorkRelatedRiskFactor)
* section[riskFactors].entry ^short = "Viide contained Observation ressursile ohuteguriga"
* section[riskFactors].modifierExtension ..0

* section[employer] 1..1
* section[employer] ^short = "Tööandja"
* section[employer].code = $HC_SECTION#employer
* section[employer].entry 1..1
* section[employer].entry only Reference(Observation)
* section[employer].entry ^type.targetProfile = MPIPatientOccupation
* section[employer].entry ^short = "Viide contained Observation ressursile töösuhega"
* section[employer].text 1..1
* section[employer].text ^short = "Tööandja asutuse registri number"
* section[employer].text.status = #additional
* section[employer].modifierExtension ..0

* section[additionalConditions] ^short = "Püsiva töövõime säilitamiseks vajalikud lisatingimused"
* section[additionalConditions].code = $HC_SECTION#work-additional-restrictions
* section[additionalConditions].entry 1..*
* section[additionalConditions].entry only Reference(EEHealthCertificateWorkAdditionalCondition)
* section[additionalConditions].entry ^short = "Viide contained Observation ressursile lisatingimusega"
* section[additionalConditions].text 1..1
* section[additionalConditions].text ^short = "Vabatekst"
* section[additionalConditions].text.status = #additional
* section[additionalConditions].modifierExtension ..0

* section[employerSuggestions] ^short = "Ettepanekud tööandjale"
* section[employerSuggestions].code = $HC_SECTION#employer-suggestions
* section[employerSuggestions].text 1..1
* section[employerSuggestions].text ^short = "Vabatekst"
* section[employerSuggestions].text.status = #additional
* section[employerSuggestions].modifierExtension ..0
* section[employerSuggestions].entry ..0

* section[employeeSuggestions] ^short = "Ettepanekud töötajale"
* section[employeeSuggestions].code = $HC_SECTION#employee-suggestions
* section[employeeSuggestions].text 1..1
* section[employeeSuggestions].text ^short = "Vabatekst"
* section[employeeSuggestions].text.status = #additional
* section[employeeSuggestions].modifierExtension ..0
* section[employeeSuggestions].entry ..0

* contained contains riskFactor 0..* and employment 1..1 and additionalCondition 0..*

* contained[medicalRestriction].value[x] from OccupationalMedicalRestrictionVS (required)

* contained[riskFactor] only EEHealthCertificateWorkRelatedRiskFactor
* contained[riskFactor] ^short = "Tööst olenevad ohutegurid"

* contained[employment] only Observation
* contained[employment] ^short = "Töötamine"
* contained[employment] ^type.profile = MPIPatientOccupation

* contained[additionalCondition] only EEHealthCertificateWorkAdditionalCondition
* contained[additionalCondition] ^short = "Püsiva töövõime säilitamiseks vajalikud lisatingimused"


Profile: EEHealthCertificateOccupationalEmployer
Parent: EEHealthCertificateOccupational
Id: ee-health-certificate-occupational-employer
Title: "Töötervishoiu tervisetõend tööandjale"
Description: "Töötervishoiu tervisetõendi profiil tööandjale kuvamiseks"
* ^experimental = true
* section[employeeSuggestions] ..0
