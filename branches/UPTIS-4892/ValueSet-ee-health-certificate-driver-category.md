# Mootosõidukijuhi tervisetõend kasutusala - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mootosõidukijuhi tervisetõend kasutusala**

## ValueSet: Mootosõidukijuhi tervisetõend kasutusala 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/ValueSet/ee-health-certificate-driver-category | *Version*:1.0.0 |
| Active as of 2026-01-13 | *Computable Name*:EEHealthCertificateDriverCategoryVS |

 
Tervisetõendi kasutusala mis on mõeldud kasutamiseks mootosõidukijuhi tervisetõendis 

 **References** 

* [Mootosõidukijuhi tervisetõend](StructureDefinition-ee-health-certificate-driver.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "ee-health-certificate-driver-category",
  "url" : "https://fhir.ee/hcert/ValueSet/ee-health-certificate-driver-category",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateDriverCategoryVS",
  "title" : "Mootosõidukijuhi tervisetõend kasutusala",
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
  "description" : "Tervisetõendi kasutusala mis on mõeldud kasutamiseks mootosõidukijuhi tervisetõendis",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
        "concept" : [
          {
            "code" : "driver-group-I"
          },
          {
            "code" : "driver-group-II"
          }
        ]
      }
    ]
  }
}

```
