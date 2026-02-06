# Mootosõidukijuhi tervisetõend - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mootosõidukijuhi tervisetõend**

## Resource Profile: Mootosõidukijuhi tervisetõend 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-driver | *Version*:1.0.0 |
| Active as of 2026-01-13 | *Computable Name*:EEHealthCertificateDriver |

 
Mootosõidukijuhi tervisetõend 

**Usages:**

* Examples for this Profile: [Composition/500](Composition-500.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.hcert|current/StructureDefinition/ee-health-certificate-driver)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-certificate-driver.csv), [Excel](StructureDefinition-ee-health-certificate-driver.xlsx), [Schematron](StructureDefinition-ee-health-certificate-driver.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-certificate-driver",
  "url" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-driver",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateDriver",
  "title" : "Mootosõidukijuhi tervisetõend",
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
  "description" : "Mootosõidukijuhi tervisetõend",
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
        "id" : "Composition.contained:decision",
        "path" : "Composition.contained",
        "sliceName" : "decision",
        "short" : "Mootorsõidukijuhi tervisetõendi otsus"
      },
      {
        "id" : "Composition.contained:decision.value[x]",
        "path" : "Composition.contained.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/mootorsoidukijuhi-tervisetoendi-otsus"
        }
      },
      {
        "id" : "Composition.contained:medicalRestriction",
        "path" : "Composition.contained",
        "sliceName" : "medicalRestriction",
        "short" : "Mootorsõidukijuhi meditsiinilised piirangud"
      },
      {
        "id" : "Composition.contained:medicalRestriction.component.code",
        "path" : "Composition.contained.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/mootorsoidukijuhi-medits-piirang"
        }
      },
      {
        "id" : "Composition.category",
        "path" : "Composition.category",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/hcert/ValueSet/ee-health-certificate-driver-category"
        }
      }
    ]
  }
}

```
