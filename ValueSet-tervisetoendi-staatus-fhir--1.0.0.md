# Tervisetõendi staatus (FHIR) - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi staatus (FHIR)**

## ValueSet: Tervisetõendi staatus (FHIR) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/ValueSet/tervisetoendi-staatus-fhir | *Version*:1.0.0 |
| Active as of 2026-03-13 | *Computable Name*:TervisetoendiStaatusFHIR |

 
Tervisetõendi teenuses kasutatavad staatused. Kasutatakse ainult FHIR teenuses. 

 **References** 

* [Tervisetõend](StructureDefinition-ee-health-certificate.md)
* [Tervisetõend](StructureDefinition-ee-health-certificate.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tervisetoendi-staatus-fhir--1.0.0",
  "language" : "et",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/web-source",
    "valueUrl" : "https://akk.tehik.ee/classifier/fhir/ValueSet/tervisetoendi-staatus-fhir"
  },
  {
    "url" : "https://fhir.ee/StructureDefinition/version-description",
    "valueString" : "Korrigeeritud eestikeelseid nimetusi ning lisatud juurde uus väärtus"
  }],
  "url" : "https://fhir.ee/ValueSet/tervisetoendi-staatus-fhir",
  "version" : "1.0.0",
  "versionAlgorithmString" : "semver",
  "name" : "TervisetoendiStaatusFHIR",
  "title" : "Tervisetõendi staatus (FHIR)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-13T12:30:53.817303Z",
  "publisher" : "TEHIK",
  "contact" : [{
    "name" : "TEHIK",
    "telecom" : [{
      "system" : "url",
      "value" : "https://tehik.ee"
    },
    {
      "system" : "email",
      "value" : "abi@tehik.ee"
    }]
  }],
  "description" : "Tervisetõendi teenuses kasutatavad staatused. Kasutatakse ainult FHIR teenuses.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "effectivePeriod" : {
    "start" : "2026-02-16T00:00:00Z"
  },
  "author" : [{
    "name" : "TEHIK"
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/composition-status",
      "concept" : [{
        "code" : "cancelled",
        "display" : "Peatatud",
        "designation" : [{
          "language" : "en",
          "value" : "cancelled"
        }]
      },
      {
        "code" : "final",
        "display" : "Lõpetatud",
        "designation" : [{
          "language" : "en",
          "value" : "final"
        }]
      },
      {
        "code" : "preliminary",
        "display" : "Mustand",
        "designation" : [{
          "language" : "en",
          "value" : "preliminary"
        }]
      },
      {
        "code" : "entered-in-error",
        "display" : "Tühistatud",
        "designation" : [{
          "language" : "en",
          "value" : "entered-in-error"
        }]
      }]
    }]
  }
}

```
