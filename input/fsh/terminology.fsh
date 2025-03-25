ValueSet: EEHealthCertificateStatusVS
Title: "Tervisetõendi staatus"
Description: "Staatuste loend millega opereerib HCERT teenus"
Id: ee-health-certificate-status
* ^experimental = false
* include http://hl7.org/fhir/composition-status#preliminary
  * ^designation[0].language = #et
  * ^designation[0].value = "Mustand"
* include http://hl7.org/fhir/composition-status#final
  * ^designation[0].language = #et
  * ^designation[0].value = "Lõpetatud"
* include http://hl7.org/fhir/composition-status#cancelled
  * ^designation[0].language = #et
  * ^designation[0].value = "Tühistatud"
* include http://hl7.org/fhir/composition-status#entered-in-error
  * ^designation[0].language = #et
  * ^designation[0].value = "Peatatud"

CodeSystem: EEHealthCertificateDecision
Id: ee-health-certificate-decision
Title: "Tervisetõendi otsus"
* ^experimental = false
* ^caseSensitive = false
* #yes "Sobib"
* #yes-with-restrictions "Sobib piirangutega"
* #no "Ei sobi"

ValueSet: EEHealthCertificateDecisionVS
Id: ee-health-certificate-decision
Title: "Tervisetõendi otsus"
* ^experimental = false
* include codes from system EEHealthCertificateDecision

CodeSystem: EEHealthCertificateRestriction
Id: ee-health-certificate-restriction
Title: "Tervisetõendi piirang"
Description: "Piirangute nimekiri erinevate kasutusalade lõikes"
* ^experimental = false
* ^caseSensitive = false
* #glasses "prillid"
* #contact-lenses "kontaktläätsed"
* #sun-shade "päikesevari"
* #glasses-or-lenses "prillid või kontaktläätsed"
* #specific-optical-aid "petsiifiline optiline abivahend"
* #hearing-aid "kuuldeaparaat / suhtlemise abivahend"
* #arm-prosthesis "käeprotees/-ortoos"
* #leg-prosthesis "jalaprotees/-ortoos"
* #daytime-driving-only "sõit üksnes päevaajal (nt üks tund pärast päikesetõusu ja üks tund enne päikeseloojangut)"
* #limited-radius-driving "sõit üksnes … km raadiuses loaomaniku elukohast või üksnes linna/piirkonna piires"
* #no-passenger-driving "sõit ilma kaassõitjata"
* #limited-speed-driving "sõit üksnes kiirusel kuni … km/h"
* #supervised-driving "juhtimine lubatud üksnes vähemalt sama kategooria juhiluba omava isiku saatel"
* #no-trailer "ilma haagiseta"
* #no-highways "kiirteel sõitmine keelatud"
* #no-alcohol "alkoholi tarbimine keelatud"
* #no-night-work "Ei sobi öö töö"
* #no-solo-work "Ei sobi töötama üksinda"
* #limited-work-hours "Lubatud tööpäeva pikkus kuni … tundi"
* #no-heavy-lifting "Vältida käsitsi raskuste teisaldamine üle … kg"
* #no-height-work "Ei ole lubatud töö kõrgustes … meetrit ja rohkem"
* #no-electrical-work "Ei ole lubatud töö pingestatud elektriseadmetega"
* #no-moving-machinery "Ei ole lubatud töö liikuvate mehhanismidega ja nende läheduses (kuni … meetrit)"
* #restricted-environmental-hazards "Ei sobi töö järgmiste töökeskkonna ohuteguritega: ...."

ValueSet: EEHealthCertificateMedicalRestrictionVS
Id: ee-health-certificate-medical-restriction
Title: "Tervisetõendi meditsiiniline piirang"
Description: "Kõik piirangud"
* ^experimental = false
* include codes from system EEHealthCertificateRestriction

ValueSet: EEHealthCertificateDriverMedicalRestrictionVS
Id: ee-health-certificate-driver-medical-restriction
Title: "Mootosõidukijuhi tervisetõendi meditsiiniline piirang"
Description: "Piirangud mootorsõiduki juhtimiseks"
* ^experimental = false
* include EEHealthCertificateRestriction#glasses
* include EEHealthCertificateRestriction#contact-lenses
* include EEHealthCertificateRestriction#sun-shade
* include EEHealthCertificateRestriction#glasses-or-lenses
* include EEHealthCertificateRestriction#specific-optical-aid
* include EEHealthCertificateRestriction#hearing-aid
* include EEHealthCertificateRestriction#arm-prosthesis
* include EEHealthCertificateRestriction#leg-prosthesis
* include EEHealthCertificateRestriction#daytime-driving-only
* include EEHealthCertificateRestriction#limited-radius-driving
* include EEHealthCertificateRestriction#no-passenger-driving
* include EEHealthCertificateRestriction#limited-speed-driving
* include EEHealthCertificateRestriction#supervised-driving
* include EEHealthCertificateRestriction#no-trailer
* include EEHealthCertificateRestriction#no-highways
* include EEHealthCertificateRestriction#no-alcohol


ValueSet: EEHealthCertificateOccupationalMedicalRestrictionVS
Id: ee-health-certificate-occupational-medical-restriction
Title: "Töötervishoiu tervisetõendi meditsiiniline piirang"
Description: "Piirangud töötamiseks"
* ^experimental = false
* include EEHealthCertificateRestriction#no-night-work
* include EEHealthCertificateRestriction#no-solo-work
* include EEHealthCertificateRestriction#limited-work-hours
* include EEHealthCertificateRestriction#no-heavy-lifting
* include EEHealthCertificateRestriction#no-height-work
* include EEHealthCertificateRestriction#no-electrical-work
* include EEHealthCertificateRestriction#no-moving-machinery
* include EEHealthCertificateRestriction#restricted-environmental-hazards

CodeSystem: EEHealthCertificateOccupationalAdditionalCondition
Id: ee-health-certificate-occupational-additional-condition
Title: "Püsiva töövõime säilitamiseks vajalik lisatingimus"
* ^experimental = false
* ^caseSensitive = false
* #safety-gear "Isikukaitsevahendid"
* #work-related-changes "Töökorralduslikud muudatused"
* #work-environment "Töökeskkond"
* #other "Muu"

ValueSet: EEHealthCertificateOccupationalAdditionalConditionVS
Id: ee-health-certificate-occupational-additional-condition
Title: "Püsiva töövõime säilitamiseks vajalik lisatingimus"
* ^experimental = false
* include codes from system EEHealthCertificateOccupationalAdditionalCondition
