# Tervisetõendi peatamine - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi peatamine**

## OperationDefinition: Tervisetõendi peatamine 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-suspend | *Version*:1.0.0 |
| Active as of 2026-01-13 | *Computable Name*:EEHealthCertificateSuspend |

 
Tervisetõendi peatamise operatsioon 

### Notes:

#### Sample request body

```

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "reason",
      "valueString": "peatamise põhjus XXX"
    }
  ]
}

```

#### Sample response

* **HTTP status**: 200 OK

```

{
  "resourceType": "Composition",
  "id": "1234",
  "meta": {
    "profile": [
      "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational"
    ]
  },
  ...
  "status": "cancelled",
  ...
  "section": [
    ...
    {
      "code": {
        "coding": [
          {
            "system": "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code": "suspend-reason"
          }
        ]
      },
      "text": {
        "status": "additional",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">peatamise põhjus XXX</div>"
      }
    },
    ...
  ],
  ...
}

```



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "ee-health-certificate-suspend",
  "url" : "https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-suspend",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateSuspend",
  "title" : "Tervisetõendi peatamine",
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
  "description" : "Tervisetõendi peatamise operatsioon",
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
  "affectsState" : true,
  "code" : "suspend",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [
    {
      "name" : "reason",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "Peatamise põhjus",
      "type" : "string"
    },
    {
      "name" : "return",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Uuendatud ressurss",
      "type" : "Composition"
    }
  ]
}

```
