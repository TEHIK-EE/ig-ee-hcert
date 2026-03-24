# Töötervishoiu tervisetõend - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Töötervishoiu tervisetõend**

## Resource Profile: Töötervishoiu tervisetõend 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational | *Version*:1.0.0 |
| Active as of 2026-01-13 | *Computable Name*:EEHealthCertificateOccupational |

 
Töötervishoiu tervisetõendi baasprofiil 

**Usages:**

* Derived from this Profile: [Töötervishoiu tervisetõend tööandjale](StructureDefinition-ee-health-certificate-occupational-employer.md)
* Examples for this Profile: [Composition/1100](Composition-1100.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.hcert|current/StructureDefinition/ee-health-certificate-occupational)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-certificate-occupational.csv), [Excel](StructureDefinition-ee-health-certificate-occupational.xlsx), [Schematron](StructureDefinition-ee-health-certificate-occupational.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-certificate-occupational",
  "url" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateOccupational",
  "title" : "Töötervishoiu tervisetõend",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-13T14:26:25+00:00",
  "publisher" : "TEHIK",
  "contact" : [
    {
      "name" : "TEHIK",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://tehik.ee"
        },
        {
          "system" : "email",
          "value" : "abi@tehik.ee"
        }
      ]
    }
  ],
  "description" : "Töötervishoiu tervisetõendi baasprofiil",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "EE",
          "display" : "Estonia"
        }
      ]
    }
  ],
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition"
      },
      {
        "id" : "Composition.contained",
        "path" : "Composition.contained",
        "min" : 2
      },
      {
        "id" : "Composition.contained:decision",
        "path" : "Composition.contained",
        "sliceName" : "decision",
        "short" : "Töötervishoiu tervisetõendi otsus"
      },
      {
        "id" : "Composition.contained:decision.value[x]",
        "path" : "Composition.contained.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/tootervishoiu-tervisetoendi-otsus"
        }
      },
      {
        "id" : "Composition.contained:medicalRestriction",
        "path" : "Composition.contained",
        "sliceName" : "medicalRestriction",
        "short" : "Töötervishoiu tervisetõendi piirangud"
      },
      {
        "id" : "Composition.contained:medicalRestriction.component.code",
        "path" : "Composition.contained.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/tootervishoiu-tt-piirangud"
        }
      },
      {
        "id" : "Composition.contained:riskFactor",
        "path" : "Composition.contained",
        "sliceName" : "riskFactor",
        "short" : "Töölaadi ja töökeskkonnaga seotud ohutegurid",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-related-risk-factor"
            ]
          }
        ]
      },
      {
        "id" : "Composition.contained:employment",
        "path" : "Composition.contained",
        "sliceName" : "employment",
        "short" : "Töötamine",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational-employment"
            ]
          }
        ]
      },
      {
        "id" : "Composition.contained:additionalCondition",
        "path" : "Composition.contained",
        "sliceName" : "additionalCondition",
        "short" : "Püsiva töövõime säilitamiseks vajalikud lisatingimused",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-additional-condition"
            ]
          }
        ]
      },
      {
        "id" : "Composition.category",
        "path" : "Composition.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
              "code" : "occupational"
            }
          ]
        }
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "min" : 2
      },
      {
        "id" : "Composition.section:riskFactors",
        "path" : "Composition.section",
        "sliceName" : "riskFactors",
        "short" : "Töölaadi ja töökeskkonnaga seotud ohutegurid",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:riskFactors.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:riskFactors.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "risk-factors"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:riskFactors.entry",
        "path" : "Composition.section.entry",
        "short" : "Viide contained Observation ressursile ohuteguriga",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-related-risk-factor"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:employer",
        "path" : "Composition.section",
        "sliceName" : "employer",
        "short" : "Töötamine",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.section:employer.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:employer.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "employer"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:employer.text",
        "path" : "Composition.section.text",
        "short" : "Tööandja asutuse registri number",
        "min" : 1
      },
      {
        "id" : "Composition.section:employer.text.status",
        "path" : "Composition.section.text.status",
        "patternCode" : "additional"
      },
      {
        "id" : "Composition.section:employer.entry",
        "path" : "Composition.section.entry",
        "short" : "Viide contained Observation ressursile töösuhega",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational-employment"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:additionalConditions",
        "path" : "Composition.section",
        "sliceName" : "additionalConditions",
        "short" : "Püsiva töövõime säilitamiseks vajalikud lisatingimused",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:additionalConditions.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:additionalConditions.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "work-additional-restrictions"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:additionalConditions.text",
        "path" : "Composition.section.text",
        "short" : "Vabatekst",
        "min" : 1
      },
      {
        "id" : "Composition.section:additionalConditions.text.status",
        "path" : "Composition.section.text.status",
        "patternCode" : "additional"
      },
      {
        "id" : "Composition.section:additionalConditions.entry",
        "path" : "Composition.section.entry",
        "short" : "Viide contained Observation ressursile lisatingimusega",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-additional-condition"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:employerSuggestions",
        "path" : "Composition.section",
        "sliceName" : "employerSuggestions",
        "short" : "Ettepanekud tööandjale",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:employerSuggestions.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:employerSuggestions.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "employer-suggestions"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:employerSuggestions.text",
        "path" : "Composition.section.text",
        "short" : "Vabatekst",
        "min" : 1
      },
      {
        "id" : "Composition.section:employerSuggestions.text.status",
        "path" : "Composition.section.text.status",
        "patternCode" : "additional"
      },
      {
        "id" : "Composition.section:employerSuggestions.entry",
        "path" : "Composition.section.entry",
        "max" : "0"
      },
      {
        "id" : "Composition.section:employeeSuggestions",
        "path" : "Composition.section",
        "sliceName" : "employeeSuggestions",
        "short" : "Ettepanekud töötajale",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:employeeSuggestions.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:employeeSuggestions.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "employee-suggestions"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:employeeSuggestions.text",
        "path" : "Composition.section.text",
        "short" : "Vabatekst",
        "min" : 1
      },
      {
        "id" : "Composition.section:employeeSuggestions.text.status",
        "path" : "Composition.section.text.status",
        "patternCode" : "additional"
      },
      {
        "id" : "Composition.section:employeeSuggestions.entry",
        "path" : "Composition.section.entry",
        "max" : "0"
      }
    ]
  }
}

```
