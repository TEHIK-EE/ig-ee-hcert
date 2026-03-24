# Sissejuhatus - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* **Sissejuhatus**

## Sissejuhatus

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/ImplementationGuide/ee.fhir.hcert | *Version*:1.0.0 |
| Active as of 2026-01-13 | *Computable Name*:HCERT |

### Sissejuhatus

HCERT (Health Certificate) ehk Tervisetõendi teenus on keskne rakendus, mille kaudu väljastatakse, säilitatakse ja hallatakse erinevate kasutusalade tervisetõendeid (näiteks töötervishoiu tõendid, mootorsõidukijui tõendid, relvaloa tõendid jpt.). Ülidsema tervisekontrolli digitaliseerimise projekti tutvustuse leiab lehelt: https://www.tehik.ee/tootervishoiu-tervisekontrolli-digitaliseerimine.

Käesoleval saidil kirjeldatakse HCERT rakendamisega seotud juurutusjuhendit. HCERT kasutab interaktsiooniprotokollina [FHIR standardit](http://fhir.hl7.org).

HCERT juurutusjuhend määratleb toetatud profiilide komplekti ja pakub iga profiili jaoks vähemalt ühe näite. FHIR profiili saab iseloomustada kui ühe fakti sisustusreeglistiku ning juurutusjuhendi kui kogumi sisustusreeglitest ja loenditest.

### Arendusvahendid ja lähtekood

HCERT-i juurutusjuhendi lähtekood on leitav [GitHubis](https://github.com/TEHIK-EE/ig-ee-hcert). Antud sait on välja töötatud [FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand) abiga. Täiendava informatsiooni FHIR Shorthand kohta saab leida [Confluence-is](https://confluence.hl7.org/display/FHIRI/FHIR+Shorthand), [GitHub-is](https://github.com/HL7/fhir-shorthand) ja [Zulip](https://chat.fhir.org) kanalis: #shorthand.

### IG metadata

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [EEHealthCertificate](StructureDefinition-ee-health-certificate.md), [EEHealthCertificateCancel](OperationDefinition-ee-health-certificate-cancel.md)...Show 15 more,[EEHealthCertificateContainedObservation](StructureDefinition-ee-health-certificate-contained-observation.md),[EEHealthCertificateDecision](StructureDefinition-ee-health-certificate-decision.md),[EEHealthCertificateDriver](StructureDefinition-ee-health-certificate-driver.md),[EEHealthCertificateDriverCategoryVS](ValueSet-ee-health-certificate-driver-category.md),[EEHealthCertificateGetConsent](OperationDefinition-ee-health-certificate-get-consent.md),[EEHealthCertificateMedicalRestriction](StructureDefinition-ee-health-certificate-medical-restriction.md),[EEHealthCertificateOccupational](StructureDefinition-ee-health-certificate-occupational.md),[EEHealthCertificateOccupationalEmployer](StructureDefinition-ee-health-certificate-occupational-employer.md),[EEHealthCertificateOccupationalEmployment](StructureDefinition-ee-health-certificate-occupational-employment.md),[EEHealthCertificatePdf](OperationDefinition-ee-health-certificate-pdf.md),[EEHealthCertificateSetConsent](OperationDefinition-ee-health-certificate-set-consent.md),[EEHealthCertificateSuspend](OperationDefinition-ee-health-certificate-suspend.md),[EEHealthCertificateWorkAdditionalCondition](StructureDefinition-ee-health-certificate-work-additional-condition.md),[EEHealthCertificateWorkRelatedRiskFactor](StructureDefinition-ee-health-certificate-work-related-risk-factor.md)and[HCERT](index.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html): [Composition/1100](Composition-1100.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* SNOMED Clinical Terms&reg; (SNOMED CT&reg;): [Composition/1100](Composition-1100.md), [Composition/500](Composition-500.md)...Show 9 more,[EEHealthCertificate](StructureDefinition-ee-health-certificate.md),[EEHealthCertificateDecision](StructureDefinition-ee-health-certificate-decision.md),[EEHealthCertificateDriver](StructureDefinition-ee-health-certificate-driver.md),[EEHealthCertificateMedicalRestriction](StructureDefinition-ee-health-certificate-medical-restriction.md),[EEHealthCertificateOccupational](StructureDefinition-ee-health-certificate-occupational.md),[EEHealthCertificateOccupationalEmployer](StructureDefinition-ee-health-certificate-occupational-employer.md),[EEHealthCertificateOccupationalEmployment](StructureDefinition-ee-health-certificate-occupational-employment.md),[EEHealthCertificateWorkAdditionalCondition](StructureDefinition-ee-health-certificate-work-additional-condition.md)and[EEHealthCertificateWorkRelatedRiskFactor](StructureDefinition-ee-health-certificate-work-related-risk-factor.md)





*There are no Global profiles defined*



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ee.fhir.hcert",
  "url" : "https://fhir.ee/hcert/ImplementationGuide/ee.fhir.hcert",
  "version" : "1.0.0",
  "name" : "HCERT",
  "title" : "Tervisetõendi teenus (HCERT)",
  "status" : "active",
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
  "packageId" : "ee.fhir.hcert",
  "license" : "MIT",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r5",
      "version" : "7.0.1"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r5",
      "version" : "5.2.0"
    },
    {
      "id" : "ee_fhir_mpi",
      "uri" : "https://fhir.ee/mpi/ImplementationGuide/ee.fhir.mpi",
      "packageId" : "ee.fhir.mpi",
      "version" : "1.5.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r5#0.9.0"
      }
    ],
    "grouping" : [
      {
        "id" : "ExternalExamples",
        "name" : "Example: Example Instances from external systems",
        "description" : "Example resources that are referenced in this IG, but are from external systems."
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/36109255737"
        },
        "name" : "Arst Paavo Lepzig",
        "description" : "Arsti näidis",
        "isExample" : true,
        "groupingId" : "ExternalExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/90006399"
        },
        "name" : "Asutus PÕHJA-EESTI REGIONAALHAIGLA",
        "description" : "Asutuse näidis",
        "isExample" : true,
        "groupingId" : "ExternalExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Composition"
          }
        ],
        "reference" : {
          "reference" : "Composition/500"
        },
        "name" : "Mootorsõiduki juhtimise tervisetõend",
        "description" : "Mustand olekus mootorsõiduki juhtimise tervisetõend, osaliselt täidetud ressursi näidis",
        "isExample" : true,
        "profile" : [
          "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-driver"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate-driver"
        },
        "name" : "Mootosõidukijuhi tervisetõend",
        "description" : "Mootosõidukijuhi tervisetõend",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/ee-health-certificate-driver-category"
        },
        "name" : "Mootosõidukijuhi tervisetõend kasutusala",
        "description" : "Tervisetõendi kasutusala mis on mõeldud kasutamiseks mootosõidukijuhi tervisetõendis",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/200"
        },
        "name" : "Patsient Taavi Kask",
        "description" : "MPI patsiendi näidis",
        "isExample" : true,
        "groupingId" : "ExternalExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/100"
        },
        "name" : "PractitionerRoleExample",
        "description" : "PractitionerRole ressursi näidis",
        "isExample" : true,
        "groupingId" : "ExternalExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate-work-additional-condition"
        },
        "name" : "Püsiva töövõime säilitamiseks vajalikud lisatingimused",
        "description" : "Observation ressurss mis kirjeldab püsiva töövõime säilitamiseks vajalikud lisatingimused. Kasutatud contained ressurisina",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/300"
        },
        "name" : "Tervisedeklaratsioon",
        "description" : "Tervisedeklaratsiooni näidis (mõeldud ainult viitamiseks)",
        "isExample" : true,
        "groupingId" : "ExternalExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource:abstract"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate"
        },
        "name" : "Tervisetõend",
        "description" : "Tervisetõendi baasprofiil",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource:abstract"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate-contained-observation"
        },
        "name" : "Tervisetõendi contained Observation",
        "description" : "Abstraaktne profiil Tervisetõendi contained Observation ressurside kirjeldamiseks",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/ee-health-certificate-set-consent"
        },
        "name" : "Tervisetõendi ligipääsude muutmine",
        "description" : "Tervisetõendi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/ee-health-certificate-get-consent"
        },
        "name" : "Tervisetõendi ligipääsude päring",
        "description" : "Tervisetõendi ligipääsude päring",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate-medical-restriction"
        },
        "name" : "Tervisetõendi meditsiiniline piirang",
        "description" : "Observation ressurss mis kirjeldab meditsiinilisi piiranguid koos täpsustusega. Kasutatud contained ressurisina",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate-decision"
        },
        "name" : "Tervisetõendi otsus",
        "description" : "Observation ressurss mis kirjeldab tervisetõendi otsuse. Kasutatud contained ressurisina",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/ee-health-certificate-pdf"
        },
        "name" : "Tervisetõendi PDF genereerimine",
        "description" : "FHIR operatsioon PDF dokumendi generereerimiseks tervisetõend (Composition) ressursi põhjal",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/ee-health-certificate-suspend"
        },
        "name" : "Tervisetõendi peatamine",
        "description" : "Tervisetõendi peatamise operatsioon",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/ee-health-certificate-cancel"
        },
        "name" : "Tervisetõendi tühistamine",
        "description" : "Tervisetõendi tühistamise operatsioon",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate-work-related-risk-factor"
        },
        "name" : "Töölaadi ja töökeskkonnaga seotud ohutegurid",
        "description" : "Observation ressurss mis kirjeldab tööst olenevad ohutegurid. Kasutatud contained ressurisina.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate-occupational"
        },
        "name" : "Töötervishoiu tervisetõend",
        "description" : "Töötervishoiu tervisetõendi baasprofiil",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Composition"
          }
        ],
        "reference" : {
          "reference" : "Composition/1100"
        },
        "name" : "Töötervishoiu tervisetõend",
        "description" : "Mustand olekus töötervishoiu tervisetõend, osaliselt täidetud ressursi näidis",
        "isExample" : true,
        "profile" : [
          "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate-occupational-employer"
        },
        "name" : "Töötervishoiu tervisetõend tööandjale",
        "description" : "Töötervishoiu tervisetõendi profiil tööandjale kuvamiseks",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ee-health-certificate-occupational-employment"
        },
        "name" : "Töötervishoiu tervisetõendi patsiendi töötamine",
        "description" : "Töötervishoiu tervisetõendi profiil patsiendi töötamise kirjeldamiseks. Kasutatud contained ressurisina",
        "isExample" : false
      }
    ],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "sourceUrl" : "index.html",
          "name" : "index.html",
          "title" : "Sissejuhatus",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "dev.html",
          "name" : "dev.html",
          "title" : "Juhend arendajale",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "api.html",
          "name" : "api.html",
          "title" : "API kirjeldus",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "permissions.html",
          "name" : "permissions.html",
          "title" : "Õigused API otspunktidele",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "download.html",
          "name" : "download.html",
          "title" : "Allalaadimised",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "profiles.html",
          "name" : "profiles.html",
          "title" : "Profiilid",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "copyrightyear"
        },
        "value" : "2025+"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "releaselabel"
        },
        "value" : "trial-use"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "excludettl"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "autoload-resources"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/capabilities"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/examples"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/extensions"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/models"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/operations"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/profiles"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/vocabulary"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/maps"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/testing"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/history"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "fsh-generated/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "template/config"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "input/images"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "template/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "input/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-qa"
        },
        "value" : "temp/qa"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-temp"
        },
        "value" : "temp/pages"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-output"
        },
        "value" : "output"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-tx-cache"
        },
        "value" : "input-cache/txcache"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-suppressed-warnings"
        },
        "value" : "input/ignoreWarnings.txt"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-history"
        },
        "value" : "https://fhir.ee/hcert/history.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-html"
        },
        "value" : "template-page.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-md"
        },
        "value" : "template-page-md.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-contact"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-context"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-copyright"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-jurisdiction"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-license"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-publisher"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-version"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-wg"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "active-tables"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "fmm-definition"
        },
        "value" : "http://hl7.org/fhir/versions.html#maturity"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "propagate-status"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "excludelogbinaryformat"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "tabbed-snapshots"
        },
        "value" : "true"
      }
    ]
  }
}

```
