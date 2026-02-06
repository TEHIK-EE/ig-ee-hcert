# Töölaadi ja töökeskkonnaga seotud ohutegurid - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Töölaadi ja töökeskkonnaga seotud ohutegurid**

## Resource Profile: Töölaadi ja töökeskkonnaga seotud ohutegurid 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-related-risk-factor | *Version*:1.0.0 |
| Active as of 2026-02-06 | *Computable Name*:EEHealthCertificateWorkRelatedRiskFactor |

 
Observation ressurss mis kirjeldab tööst olenevad ohutegurid. Kasutatud contained ressurisina. 

**Usages:**

* Use this Profile: [Töötervishoiu tervisekontrolli otsus](StructureDefinition-ee-health-certificate-occupational.md)
* Refer to this Profile: [Töötervishoiu tervisekontrolli otsus](StructureDefinition-ee-health-certificate-occupational.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.hcert|current/StructureDefinition/ee-health-certificate-work-related-risk-factor)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-certificate-work-related-risk-factor.csv), [Excel](StructureDefinition-ee-health-certificate-work-related-risk-factor.xlsx), [Schematron](StructureDefinition-ee-health-certificate-work-related-risk-factor.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-certificate-work-related-risk-factor",
  "url" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-related-risk-factor",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateWorkRelatedRiskFactor",
  "title" : "Töölaadi ja töökeskkonnaga seotud ohutegurid",
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
  "description" : "Observation ressurss mis kirjeldab tööst olenevad ohutegurid. Kasutatud contained ressurisina.",
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
              "code" : "80943009",
              "display" : "Risk factor"
            }
          ]
        }
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "Ohutegur",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/toolaadi-ja-tookeskkonnaga-seotud-ohutegurid"
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
