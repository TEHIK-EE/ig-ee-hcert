# Tervisetõendi ligipääsude päring - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi ligipääsude päring**

## OperationDefinition: Tervisetõendi ligipääsude päring 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-get-consent | *Version*:1.0.0 |
| Active as of 2026-02-06 | *Computable Name*:EEHealthCertificateGetConsent |

 
Tervisetõendi ligipääsude päring 

### Notes:

#### Sample response

* **HTTP status**: 200 OK

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "doctor",
      "valueString": "open"
    },
    {
      "name": "representative",
      "valueString": "open"
    }
  ]
}

```



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "ee-health-certificate-get-consent",
  "url" : "https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-get-consent",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateGetConsent",
  "title" : "Tervisetõendi ligipääsude päring",
  "status" : "active",
  "kind" : "operation",
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
  "description" : "Tervisetõendi ligipääsude päring",
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
  "affectsState" : false,
  "code" : "get-consent",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [
    {
      "name" : "doctor",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "documentation" : "Konfidentsiaalsus arstile",
      "type" : "string"
    },
    {
      "name" : "representative",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "documentation" : "Konfidentsiaalsus eestkostjale",
      "type" : "string"
    }
  ]
}

```
