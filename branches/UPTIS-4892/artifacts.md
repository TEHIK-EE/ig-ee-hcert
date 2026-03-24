# Artifacts Summary - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Example: Example Instances from external systems 

Example resources that are referenced in this IG, but are from external systems.

| | |
| :--- | :--- |
| [Arst Paavo Lepzig](Practitioner-36109255737.md) | Arsti näidis |
| [Asutus PÕHJA-EESTI REGIONAALHAIGLA](Organization-90006399.md) | Asutuse näidis |
| [Patsient Taavi Kask](Patient-200.md) | MPI patsiendi näidis |
| [PractitionerRoleExample](PractitionerRole-100.md) | PractitionerRole ressursi näidis |
| [Tervisedeklaratsioon](QuestionnaireResponse-300.md) | Tervisedeklaratsiooni näidis (mõeldud ainult viitamiseks) |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Tervisetõendi PDF genereerimine](OperationDefinition-ee-health-certificate-pdf.md) | FHIR operatsioon PDF dokumendi generereerimiseks tervisetõend (Composition) ressursi põhjal |
| [Tervisetõendi ligipääsude muutmine](OperationDefinition-ee-health-certificate-set-consent.md) | Tervisetõendi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'. |
| [Tervisetõendi ligipääsude päring](OperationDefinition-ee-health-certificate-get-consent.md) | Tervisetõendi ligipääsude päring |
| [Tervisetõendi peatamine](OperationDefinition-ee-health-certificate-suspend.md) | Tervisetõendi peatamise operatsioon |
| [Tervisetõendi tühistamine](OperationDefinition-ee-health-certificate-cancel.md) | Tervisetõendi tühistamise operatsioon |

### Structures: Abstract Profiles 

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. I.e. instances can conform to profiles **based** on these abstract profiles but do not declare conformance to the abstract profiles themselves.

| | |
| :--- | :--- |
| [Tervisetõend](StructureDefinition-ee-health-certificate.md) | Tervisetõendi baasprofiil |
| [Tervisetõendi contained Observation](StructureDefinition-ee-health-certificate-contained-observation.md) | Abstraaktne profiil Tervisetõendi contained Observation ressurside kirjeldamiseks |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Mootosõidukijuhi tervisetõend](StructureDefinition-ee-health-certificate-driver.md) | Mootosõidukijuhi tervisetõend |
| [Püsiva töövõime säilitamiseks vajalikud lisatingimused](StructureDefinition-ee-health-certificate-work-additional-condition.md) | Observation ressurss mis kirjeldab püsiva töövõime säilitamiseks vajalikud lisatingimused. Kasutatud contained ressurisina |
| [Tervisetõendi meditsiiniline piirang](StructureDefinition-ee-health-certificate-medical-restriction.md) | Observation ressurss mis kirjeldab meditsiinilisi piiranguid koos täpsustusega. Kasutatud contained ressurisina |
| [Tervisetõendi otsus](StructureDefinition-ee-health-certificate-decision.md) | Observation ressurss mis kirjeldab tervisetõendi otsuse. Kasutatud contained ressurisina |
| [Töölaadi ja töökeskkonnaga seotud ohutegurid](StructureDefinition-ee-health-certificate-work-related-risk-factor.md) | Observation ressurss mis kirjeldab tööst olenevad ohutegurid. Kasutatud contained ressurisina. |
| [Töötervishoiu tervisetõend](StructureDefinition-ee-health-certificate-occupational.md) | Töötervishoiu tervisetõendi baasprofiil |
| [Töötervishoiu tervisetõend tööandjale](StructureDefinition-ee-health-certificate-occupational-employer.md) | Töötervishoiu tervisetõendi profiil tööandjale kuvamiseks |
| [Töötervishoiu tervisetõendi patsiendi töötamine](StructureDefinition-ee-health-certificate-occupational-employment.md) | Töötervishoiu tervisetõendi profiil patsiendi töötamise kirjeldamiseks. Kasutatud contained ressurisina |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Mootosõidukijuhi tervisetõend kasutusala](ValueSet-ee-health-certificate-driver-category.md) | Tervisetõendi kasutusala mis on mõeldud kasutamiseks mootosõidukijuhi tervisetõendis |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Mootorsõiduki juhtimise tervisetõend](Composition-500.md) | Mustand olekus mootorsõiduki juhtimise tervisetõend, osaliselt täidetud ressursi näidis |
| [Töötervishoiu tervisetõend](Composition-1100.md) | Mustand olekus töötervishoiu tervisetõend, osaliselt täidetud ressursi näidis |

