# Tervisetõendi tühistamine - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi tühistamine**

## OperationDefinition: Tervisetõendi tühistamine 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-cancel | *Version*:1.0.0 |
| Active as of 2026-02-06 | *Computable Name*:EEHealthCertificateCancel |

 
Tervisetõendi tühistamise operatsioon 

### Notes:

#### Sample request body

```

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "reason",
      "valueString": "tühistamise põhjus XXX"
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
  "status": "entered-in-error",
  ...
  "section": [
    ...
    {
      "code": {
        "coding": [
          {
            "system": "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code": "cancel-reason"
          }
        ]
      },
      "text": {
        "status": "additional",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">tühistamise põhjus XXX</div>"
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
  "id" : "ee-health-certificate-cancel",
  "url" : "https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-cancel",
  "version" : "1.0.0",
  "name" : "EEHealthCertificateCancel",
  "title" : "Tervisetõendi tühistamine",
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
  "description" : "Tervisetõendi tühistamise operatsioon",
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
  "code" : "cancel",
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
      "documentation" : "Tühistamise põhjus",
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
