# Töötamine - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Töötamine**

## Resource Profile: Töötamine 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational-employment | *Version*:1.0.0 |
| Active as of 2026-02-06 | *Computable Name*:EEHealthCertificateOccupationalEmployment |

 
Töötervishoiu tervisekontrolli otsuse profiil patsiendi töötamise kirjeldamiseks. Kasutatud contained ressurisina 

**Usages:**

* Use this Profile: [Töötervishoiu tervisekontrolli otsus](StructureDefinition-ee-health-certificate-occupational.md)
* Refer to this Profile: [Töötervishoiu tervisekontrolli otsus](StructureDefinition-ee-health-certificate-occupational.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.hcert|current/StructureDefinition/ee-health-certificate-occupational-employment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-certificate-occupational-employment.csv), [Excel](StructureDefinition-ee-health-certificate-occupational-employment.xlsx), [Schematron](StructureDefinition-ee-health-certificate-occupational-employment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-certificate-occupational-employment",
  "url" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational-employment",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateOccupationalEmployment",
  "title" : "Töötamine",
  "status" : "active",
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
  "description" : "Töötervishoiu tervisekontrolli otsuse profiil patsiendi töötamise kirjeldamiseks. Kasutatud contained ressurisina",
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
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "184104002",
          "display" : "Patient occupation"
        }
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "Tööandja asutus",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
          }
        ]
      },
      {
        "id" : "Observation.performer.identifier",
        "path" : "Observation.performer.identifier",
        "min" : 1
      },
      {
        "id" : "Observation.performer.display",
        "path" : "Observation.performer.display",
        "min" : 1
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "rules" : "open"
        },
        "max" : "2"
      },
      {
        "id" : "Observation.component:job",
        "path" : "Observation.component",
        "sliceName" : "job",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:job.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "160922003",
              "display" : "Job details"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:job.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Tööamet",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/ametite-klassifikaator"
        }
      },
      {
        "id" : "Observation.component:rate",
        "path" : "Observation.component",
        "sliceName" : "rate",
        "short" : "Lepinguline töökoormus",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:rate.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "224374003",
              "display" : "Regularity of work"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:rate.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Töökoormus (0..1]",
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:rate.value[x].comparator",
        "path" : "Observation.component.value[x].comparator",
        "max" : "0"
      },
      {
        "id" : "Observation.component:rate.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "1"
      }
    ]
  }
}

```
