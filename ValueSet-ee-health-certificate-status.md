# Tervisetõendi staatus - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi staatus**

## ValueSet: Tervisetõendi staatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/ValueSet/ee-health-certificate-status | *Version*:1.0.0 |
| Active as of 2025-12-23 | *Computable Name*:EEHealthCertificateStatusVS |

 
Staatuste loend millega opereerib HCERT teenus 

 **References** 

* [Tervisetõend](StructureDefinition-ee-health-certificate.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "ee-health-certificate-status",
  "url" : "https://fhir.ee/hcert/ValueSet/ee-health-certificate-status",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateStatusVS",
  "title" : "Tervisetõendi staatus",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-23T08:21:09+00:00",
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
  "description" : "Staatuste loend millega opereerib HCERT teenus",
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
        "system" : "http://hl7.org/fhir/composition-status",
        "concept" : [
          {
            "code" : "preliminary",
            "designation" : [
              {
                "language" : "et-EE",
                "value" : "Mustand"
              }
            ]
          },
          {
            "code" : "final",
            "designation" : [
              {
                "language" : "et-EE",
                "value" : "Lõpetatud"
              }
            ]
          },
          {
            "code" : "cancelled",
            "designation" : [
              {
                "language" : "et-EE",
                "value" : "Peatatud"
              }
            ]
          },
          {
            "code" : "entered-in-error",
            "designation" : [
              {
                "language" : "et-EE",
                "value" : "Tühistatud"
              }
            ]
          }
        ]
      }
    ]
  }
}

```
