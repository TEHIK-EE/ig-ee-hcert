# Tervisetõendi meditsiiniline piirang - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi meditsiiniline piirang**

## Resource Profile: Tervisetõendi meditsiiniline piirang 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-medical-restriction | *Version*:1.0.0 |
| Active as of 2026-01-13 | *Computable Name*:EEHealthCertificateMedicalRestriction |

 
Observation ressurss mis kirjeldab meditsiinilisi piiranguid koos täpsustusega. Kasutatud contained ressurisina 

**Usages:**

* Use this Profile: [Tervisetõend](StructureDefinition-ee-health-certificate.md)
* Refer to this Profile: [Tervisetõend](StructureDefinition-ee-health-certificate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.hcert|current/StructureDefinition/ee-health-certificate-medical-restriction)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-certificate-medical-restriction.csv), [Excel](StructureDefinition-ee-health-certificate-medical-restriction.xlsx), [Schematron](StructureDefinition-ee-health-certificate-medical-restriction.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-certificate-medical-restriction",
  "url" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-medical-restriction",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateMedicalRestriction",
  "title" : "Tervisetõendi meditsiiniline piirang",
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
  "description" : "Observation ressurss mis kirjeldab meditsiinilisi piiranguid koos täpsustusega. Kasutatud contained ressurisina",
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
              "code" : "146861000181105",
              "display" : "Restriction"
            }
          ]
        }
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "max" : "0"
      },
      {
        "id" : "Observation.note",
        "path" : "Observation.note",
        "short" : "Kommentaarid piirangu kohta",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "short" : "Meditsiiniline piirang koos täpsustusega",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "short" : "Piirangu kood"
      },
      {
        "id" : "Observation.component.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "Piirangu täpsustus",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "short" : "Numbriline täpsustus",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "short" : "Koodiline täpsustus",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
