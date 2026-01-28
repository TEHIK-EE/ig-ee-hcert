# Tervisetõendi ligipääsude muutmine - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi ligipääsude muutmine**

## OperationDefinition: Tervisetõendi ligipääsude muutmine 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-set-consent | *Version*:1.0.0 |
| Active as of 2026-01-13 | *Computable Name*:EEHealthCertificateSetConsent |

 
Tervisetõendi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'. 

### Notes:

#### Sample request body

```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "doctor",
      "valueString": "closed"
    },
    {
      "name": "representative",
      "valueString": "open"
    }
  ]
}

```

#### Sample response

* **HTTP status**: 200 OK



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "ee-health-certificate-set-consent",
  "url" : "https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-set-consent",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateSetConsent",
  "title" : "Tervisetõendi ligipääsude muutmine",
  "status" : "active",
  "kind" : "operation",
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
  "description" : "Tervisetõendi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'.",
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
  "code" : "set-consent",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [
    {
      "name" : "doctor",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Konfidentsiaalsus arstile",
      "type" : "string"
    },
    {
      "name" : "representative",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Konfidentsiaalsus eestkostjale",
      "type" : "string"
    }
  ]
}

```
