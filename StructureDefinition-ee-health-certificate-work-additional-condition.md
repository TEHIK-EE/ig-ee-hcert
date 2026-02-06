# Töötamiseks vajalik lisatingimus - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Töötamiseks vajalik lisatingimus**

## Resource Profile: Töötamiseks vajalik lisatingimus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-additional-condition | *Version*:1.0.0 |
| Active as of 2026-02-06 | *Computable Name*:EEHealthCertificateWorkAdditionalCondition |

 
Observation ressurss mis kirjeldab töötamiseks vajalik lisatingimus. Kasutatud contained ressurisina 

**Usages:**

* Use this Profile: [Töötervishoiu tervisekontrolli otsus](StructureDefinition-ee-health-certificate-occupational.md)
* Refer to this Profile: [Töötervishoiu tervisekontrolli otsus](StructureDefinition-ee-health-certificate-occupational.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.hcert|current/StructureDefinition/ee-health-certificate-work-additional-condition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-certificate-work-additional-condition.csv), [Excel](StructureDefinition-ee-health-certificate-work-additional-condition.xlsx), [Schematron](StructureDefinition-ee-health-certificate-work-additional-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-certificate-work-additional-condition",
  "url" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-additional-condition",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateWorkAdditionalCondition",
  "title" : "Töötamiseks vajalik lisatingimus",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-06T08:35:48+00:00",
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
  "description" : "Observation ressurss mis kirjeldab töötamiseks vajalik lisatingimus. Kasutatud contained ressurisina",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-contained-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "225891002",
              "display" : "Fit for work with certain limitations"
            }
          ]
        }
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "Lisatingimus",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/tootamiseks-vajalikud-lisatingimused"
        }
      },
      {
        "id" : "Observation.note",
        "path" : "Observation.note",
        "max" : "0"
      }
    ]
  }
}

```
