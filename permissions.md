# Õigused API otspunktidele - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* **Õigused API otspunktidele**

## Õigused API otspunktidele

Rollid on kirjeldatud [siin](https://teabekeskus.tehik.ee/et/teenused/tis-teenused/tis-andmevahetus/autoriseerimise-teenuse-kasutajate-rollid).

| | | | |
| :--- | :--- | :--- | :--- |
| hcert.certificate.manage | practitioner (group), therapist (group), student, specialist | Tervisetõendite lisamine (mustand), muutmine, tühistamineKõikide tõendite lugemine | POST /fhir/CompositionPOST /fhir/Composition/{id}/$cancelPOST /fhir/Composition/{id}/$suspendPUT /fhir/Composition/{id}GET /fhir/Composition |
| hcert.certificate.read |   | Kinnitatud tervisetõendite lugemine | GET /fhir/Composition?status=final,cancelledGET /fhir/Composition/{id}, kus status=final,cancelled |
| hcert.certificate.count | vaikimisi ei ole antud rollidele | Tervisetõendite olemasolu kontrollTagastatakse ainult tulemuste arv | GET /fhir/Composition?{params}&_count=0 |
| hcert.occupational-certificate.employer-read | gov-official | Töötervishoiu tervisekontrolli kinnitatud otsuste lugemineTööandja profiil | GET /fhir/Composition?category=occupational&status=final,cancelledGET /fhir/Composition/{id}, kus category=occupational&status=final,cancelled |
| hcert.driver-certificate.read | gov-official | Mootorsõiduki juhtimise kinnitatud tõendite lugemine | GET /fhir/Composition?category=drivers&status=final,cancelledGET /fhir/Composition/{id}, kus category=drivers&status=final,cancelled |
| hcert.personal-certificate.read | consumerconsumer-limited | Kindla patsiendi kinnitatud tervisetõendite lugeminePeab olema vastav esindusõigus | GET /fhir/Composition?subject={patient_id}&status=final,cancelledGET /fhir/Composition/{id}, kus subject={patient_id}&status=final,cancelled |
| hcert.employee-occupational-certificate.employer-read | org-legal-representative | Oma töötajate töötervishoiu tervisekontrolli kinnitatud otsuste lugemineTööandja profiil | GET /fhir/Composition?section-code-text=occupation|12345&status=final,cancelledGET /fhir/Composition/{id}, tööandja=12345&status=final,cancelled |
| hcert.certificate.consent-write | consumer | Ligipääsude kirjutamine.Peab ka olema lugemisõigus põhiresurssile | POST /fhir/Composition/{id}/$set-consent |
| hcert.certificate.consent-read | consumerconsumer-limited | Ligipääsude lugemine.Peab ka olema lugemisõigus põhiresurssile | GET /fhir/Composition/{id}/$get-consent |

