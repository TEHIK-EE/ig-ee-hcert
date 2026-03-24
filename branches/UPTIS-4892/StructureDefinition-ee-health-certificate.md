# Tervisetõend - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõend**

## Resource Profile: Tervisetõend ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/StructureDefinition/ee-health-certificate | *Version*:1.0.0 |
| Active as of 2026-01-13 | *Computable Name*:EEHealthCertificate |

 
Tervisetõendi baasprofiil 

**Usages:**

* Derived from this Profile: [Mootosõidukijuhi tervisetõend](StructureDefinition-ee-health-certificate-driver.md) and [Töötervishoiu tervisetõend](StructureDefinition-ee-health-certificate-occupational.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.hcert|current/StructureDefinition/ee-health-certificate)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-certificate.csv), [Excel](StructureDefinition-ee-health-certificate.xlsx), [Schematron](StructureDefinition-ee-health-certificate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-certificate",
  "url" : "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate",
  "version" : "1.0.0",
  "name" : "EEHealthCertificate",
  "title" : "Tervisetõend",
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
  "description" : "Tervisetõendi baasprofiil",
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
  "abstract" : true,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition"
      },
      {
        "id" : "Composition.implicitRules",
        "path" : "Composition.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Composition.contained",
        "path" : "Composition.contained",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            },
            {
              "type" : "profile",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Composition.contained:decision",
        "path" : "Composition.contained",
        "sliceName" : "decision",
        "short" : "Tervisetõendi otsus",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-decision"
            ]
          }
        ]
      },
      {
        "id" : "Composition.contained:medicalRestriction",
        "path" : "Composition.contained",
        "sliceName" : "medicalRestriction",
        "short" : "Meditsiinilised piirangud",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-medical-restriction"
            ]
          }
        ]
      },
      {
        "id" : "Composition.contained:author",
        "path" : "Composition.contained",
        "sliceName" : "author",
        "short" : "Tervisetõendi autor",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "PractitionerRole"
          }
        ]
      },
      {
        "id" : "Composition.contained:author.implicitRules",
        "path" : "Composition.contained.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Composition.contained:author.contained",
        "path" : "Composition.contained.contained",
        "max" : "0"
      },
      {
        "id" : "Composition.contained:author.modifierExtension",
        "path" : "Composition.contained.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.contained:author.practitioner",
        "path" : "Composition.contained.practitioner",
        "short" : "Viide SPD Practitioner ressursile",
        "min" : 1
      },
      {
        "id" : "Composition.contained:author.organization",
        "path" : "Composition.contained.organization",
        "short" : "Viide SPD Organization ressursile",
        "min" : 1
      },
      {
        "id" : "Composition.modifierExtension",
        "path" : "Composition.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.url",
        "path" : "Composition.url",
        "max" : "0"
      },
      {
        "id" : "Composition.identifier",
        "path" : "Composition.identifier",
        "short" : "Dokumendi number",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.identifier.use",
        "path" : "Composition.identifier.use",
        "max" : "0"
      },
      {
        "id" : "Composition.identifier.system",
        "path" : "Composition.identifier.system",
        "min" : 1,
        "patternUri" : "https://fhir.ee/hcert/health-certificate-number"
      },
      {
        "id" : "Composition.identifier.value",
        "path" : "Composition.identifier.value",
        "min" : 1
      },
      {
        "id" : "Composition.status",
        "path" : "Composition.status",
        "short" : "Tõendi staatus",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/tervisetoendi-staatus-fhir"
        }
      },
      {
        "id" : "Composition.type",
        "path" : "Composition.type",
        "short" : "Composition ressursi tüüp. Fikseeritud väärtus"
      },
      {
        "id" : "Composition.type.coding",
        "path" : "Composition.type.coding",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "772786005",
          "display" : "Medical certificate (record artifact)"
        }
      },
      {
        "id" : "Composition.category",
        "path" : "Composition.category",
        "short" : "Tervisekontrolli kasutusala",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/labivaatuse-tyyp"
        }
      },
      {
        "id" : "Composition.subject",
        "path" : "Composition.subject",
        "short" : "MPI Patient reference",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
            ]
          }
        ]
      },
      {
        "id" : "Composition.encounter",
        "path" : "Composition.encounter",
        "max" : "0"
      },
      {
        "id" : "Composition.date",
        "path" : "Composition.date",
        "short" : "Dokumendi väljastamise aeg"
      },
      {
        "id" : "Composition.useContext",
        "path" : "Composition.useContext",
        "max" : "0"
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
        "short" : "Viide contained PractitionerRole ressursile",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
          }
        ]
      },
      {
        "id" : "Composition.name",
        "path" : "Composition.name",
        "max" : "0"
      },
      {
        "id" : "Composition.title",
        "path" : "Composition.title",
        "short" : "Tõendi nimetus. Sama mis category"
      },
      {
        "id" : "Composition.note",
        "path" : "Composition.note",
        "max" : "0"
      },
      {
        "id" : "Composition.attester",
        "path" : "Composition.attester",
        "max" : "0"
      },
      {
        "id" : "Composition.custodian",
        "path" : "Composition.custodian",
        "max" : "0"
      },
      {
        "id" : "Composition.relatesTo",
        "path" : "Composition.relatesTo",
        "max" : "0"
      },
      {
        "id" : "Composition.event",
        "path" : "Composition.event",
        "short" : "Tervisetõendi kehtivus",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.event.modifierExtension",
        "path" : "Composition.event.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.event.period",
        "path" : "Composition.event.period",
        "min" : 1
      },
      {
        "id" : "Composition.event.period.start",
        "path" : "Composition.event.period.start",
        "short" : "Alguskuupäev",
        "min" : 1
      },
      {
        "id" : "Composition.event.period.end",
        "path" : "Composition.event.period.end",
        "short" : "Lõppkuupäev",
        "min" : 1
      },
      {
        "id" : "Composition.event.detail",
        "path" : "Composition.event.detail",
        "max" : "0"
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Composition.section:decision",
        "path" : "Composition.section",
        "sliceName" : "decision",
        "short" : "Tervisetõendi otsus",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:decision.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:decision.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "decision"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:decision.entry",
        "path" : "Composition.section.entry",
        "short" : "Viide contained Observation ressursile otsuse koodiga",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-decision"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:healthDeclaration",
        "path" : "Composition.section",
        "sliceName" : "healthDeclaration",
        "short" : "Tervisedeklaratsioon",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.section:healthDeclaration.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:healthDeclaration.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "health-declaration"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:healthDeclaration.entry",
        "path" : "Composition.section.entry",
        "short" : "Viide tervisedelaratsioonile",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:healthDeclaration.entry.reference",
        "path" : "Composition.section.entry.reference",
        "short" : "Kanooniline viide tervisedeklaratsioonile (HDECL QuestionnaireResponse ressursile)"
      },
      {
        "id" : "Composition.section:healthDeclaration.entry.identifier",
        "path" : "Composition.section.entry.identifier",
        "short" : "Tervisedeklaratsiooni dokumendi number kui HDECL QuestionnaireResponse ressursile ei saa viidata"
      },
      {
        "id" : "Composition.section:healthDeclaration.entry.identifier.use",
        "path" : "Composition.section.entry.identifier.use",
        "max" : "0"
      },
      {
        "id" : "Composition.section:healthDeclaration.entry.identifier.system",
        "path" : "Composition.section.entry.identifier.system",
        "min" : 1,
        "patternUri" : "https://fhir.ee/hcert/health-declaration-external-document-number"
      },
      {
        "id" : "Composition.section:healthDeclaration.entry.identifier.value",
        "path" : "Composition.section.entry.identifier.value",
        "short" : "Tervisedeklaratsiooni dokumendi number välises infosüsteemis",
        "min" : 1
      },
      {
        "id" : "Composition.section:medicalRestriction",
        "path" : "Composition.section",
        "sliceName" : "medicalRestriction",
        "short" : "Meditsiinilised piirangud",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:medicalRestriction.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:medicalRestriction.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "medical-restrictions"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:medicalRestriction.entry",
        "path" : "Composition.section.entry",
        "short" : "Viide contained Observation ressursile (Meditsiiniline piirang)",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-medical-restriction"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:shortenedReason",
        "path" : "Composition.section",
        "sliceName" : "shortenedReason",
        "short" : "Lühema tervisekontrolli aja põhjus",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:shortenedReason.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:shortenedReason.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "shortened-reason"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:shortenedReason.text",
        "path" : "Composition.section.text",
        "short" : "Vabatekst lühema tervisekontrolli aja põhjusega",
        "min" : 1
      },
      {
        "id" : "Composition.section:shortenedReason.text.status",
        "path" : "Composition.section.text.status",
        "patternCode" : "additional"
      },
      {
        "id" : "Composition.section:shortenedReason.entry",
        "path" : "Composition.section.entry",
        "max" : "0"
      },
      {
        "id" : "Composition.section:rejectReason",
        "path" : "Composition.section",
        "sliceName" : "rejectReason",
        "short" : "Eitava otsuse põhjendus",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:rejectReason.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:rejectReason.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "reject-reason"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:rejectReason.text",
        "path" : "Composition.section.text",
        "short" : "Vabatekst eitava otsuse põhjendusega",
        "min" : 1
      },
      {
        "id" : "Composition.section:rejectReason.text.status",
        "path" : "Composition.section.text.status",
        "patternCode" : "additional"
      },
      {
        "id" : "Composition.section:rejectReason.entry",
        "path" : "Composition.section.entry",
        "max" : "0"
      },
      {
        "id" : "Composition.section:changeReason",
        "path" : "Composition.section",
        "sliceName" : "changeReason",
        "short" : "Tervisetõendi muutmise põhjus",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:changeReason.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:changeReason.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "change-reason"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:changeReason.text",
        "path" : "Composition.section.text",
        "short" : "Vabatekst tervisetõendi muutmise põhjusega",
        "min" : 1
      },
      {
        "id" : "Composition.section:changeReason.text.status",
        "path" : "Composition.section.text.status",
        "patternCode" : "additional"
      },
      {
        "id" : "Composition.section:changeReason.entry",
        "path" : "Composition.section.entry",
        "max" : "0"
      },
      {
        "id" : "Composition.section:cancelReason",
        "path" : "Composition.section",
        "sliceName" : "cancelReason",
        "short" : "Tervisetõendi tühistamise põhjus. Read-only sektsioon, põhjus määratakse operatsiooniga.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:cancelReason.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:cancelReason.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "cancel-reason"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:cancelReason.text",
        "path" : "Composition.section.text",
        "short" : "Vabatekst tervisetõendi tühistamise põhjusega",
        "min" : 1
      },
      {
        "id" : "Composition.section:cancelReason.text.status",
        "path" : "Composition.section.text.status",
        "patternCode" : "additional"
      },
      {
        "id" : "Composition.section:cancelReason.entry",
        "path" : "Composition.section.entry",
        "max" : "0"
      },
      {
        "id" : "Composition.section:suspendReason",
        "path" : "Composition.section",
        "sliceName" : "suspendReason",
        "short" : "Tervisetõendi peatamise põhjus. Read-only sektsioon, põhjus määratakse operatsiooniga.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:suspendReason.modifierExtension",
        "path" : "Composition.section.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Composition.section:suspendReason.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
              "code" : "suspend-reason"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:suspendReason.text",
        "path" : "Composition.section.text",
        "short" : "Vabatekst tervisetõendi peatamise põhjusega",
        "min" : 1
      },
      {
        "id" : "Composition.section:suspendReason.text.status",
        "path" : "Composition.section.text.status",
        "patternCode" : "additional"
      },
      {
        "id" : "Composition.section:suspendReason.entry",
        "path" : "Composition.section.entry",
        "max" : "0"
      }
    ]
  }
}

```
