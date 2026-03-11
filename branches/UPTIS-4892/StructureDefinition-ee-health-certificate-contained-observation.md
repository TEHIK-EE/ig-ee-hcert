# Tervisetõendi contained Observation - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi contained Observation**

## Resource Profile: Tervisetõendi contained Observation ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-contained-observation | *Version*:1.0.0 |
| Active as of 2026-01-13 | *Computable Name*:EEHealthCertificateContainedObservation |

 
Abstraaktne profiil Tervisetõendi contained Observation ressurside kirjeldamiseks 

**Usages:**

* Derived from this Profile: [Tervisetõendi otsus](StructureDefinition-ee-health-certificate-decision.md), [Tervisetõendi meditsiiniline piirang](StructureDefinition-ee-health-certificate-medical-restriction.md), [Töötervishoiu tervisetõendi patsiendi töötamine](StructureDefinition-ee-health-certificate-occupational-employment.md), [Püsiva töövõime säilitamiseks vajalikud lisatingimused](StructureDefinition-ee-health-certificate-work-additional-condition.md) and [Töölaadi ja töökeskkonnaga seotud ohutegurid](StructureDefinition-ee-health-certificate-work-related-risk-factor.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.hcert|current/StructureDefinition/ee-health-certificate-contained-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-certificate-contained-observation.csv), [Excel](StructureDefinition-ee-health-certificate-contained-observation.xlsx), [Schematron](StructureDefinition-ee-health-certificate-contained-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-certificate-contained-observation",
  "url" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-contained-observation",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateContainedObservation",
  "title" : "Tervisetõendi contained Observation",
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
  "description" : "Abstraaktne profiil Tervisetõendi contained Observation ressurside kirjeldamiseks",
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
  "abstract" : true,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.implicitRules",
        "path" : "Observation.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Observation.contained",
        "path" : "Observation.contained",
        "max" : "0"
      },
      {
        "id" : "Observation.modifierExtension",
        "path" : "Observation.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "max" : "0"
      },
      {
        "id" : "Observation.instantiates[x]",
        "path" : "Observation.instantiates[x]",
        "max" : "0"
      },
      {
        "id" : "Observation.basedOn",
        "path" : "Observation.basedOn",
        "max" : "0"
      },
      {
        "id" : "Observation.triggeredBy",
        "path" : "Observation.triggeredBy",
        "max" : "0"
      },
      {
        "id" : "Observation.partOf",
        "path" : "Observation.partOf",
        "max" : "0"
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "patternCode" : "final"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "max" : "0"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "max" : "0"
      },
      {
        "id" : "Observation.focus",
        "path" : "Observation.focus",
        "max" : "0"
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "max" : "0"
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "max" : "0"
      },
      {
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "max" : "0"
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.dataAbsentReason",
        "path" : "Observation.dataAbsentReason",
        "max" : "0"
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "max" : "0"
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "max" : "0"
      },
      {
        "id" : "Observation.bodyStructure",
        "path" : "Observation.bodyStructure",
        "max" : "0"
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "max" : "0"
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "max" : "0"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "max" : "0"
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "max" : "0"
      },
      {
        "id" : "Observation.component.modifierExtension",
        "path" : "Observation.component.modifierExtension",
        "max" : "0"
      }
    ]
  }
}

```
