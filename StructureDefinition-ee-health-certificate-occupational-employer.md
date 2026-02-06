# Töötervishoiu tervisekontrolli otsus tööandjale - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Töötervishoiu tervisekontrolli otsus tööandjale**

## Resource Profile: Töötervishoiu tervisekontrolli otsus tööandjale ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational-employer | *Version*:1.0.0 |
| Active as of 2026-02-06 | *Computable Name*:EEHealthCertificateOccupationalEmployer |

 
Töötervishoiu tervisekontrolli otsuse profiil tööandjale kuvamiseks 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.hcert|current/StructureDefinition/ee-health-certificate-occupational-employer)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-certificate-occupational-employer.csv), [Excel](StructureDefinition-ee-health-certificate-occupational-employer.xlsx), [Schematron](StructureDefinition-ee-health-certificate-occupational-employer.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-certificate-occupational-employer",
  "url" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational-employer",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateOccupationalEmployer",
  "title" : "Töötervishoiu tervisekontrolli otsus tööandjale",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Töötervishoiu tervisekontrolli otsuse profiil tööandjale kuvamiseks",
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
  "baseDefinition" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition"
      },
      {
        "id" : "Composition.section:employeeSuggestions",
        "path" : "Composition.section",
        "sliceName" : "employeeSuggestions",
        "max" : "0"
      }
    ]
  }
}

```
