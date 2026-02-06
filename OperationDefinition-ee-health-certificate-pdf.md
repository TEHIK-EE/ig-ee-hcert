# Tervisetõendi PDF genereerimine - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi PDF genereerimine**

## OperationDefinition: Tervisetõendi PDF genereerimine 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-pdf | *Version*:1.0.0 |
| Active as of 2026-02-06 | *Computable Name*:EEHealthCertificatePdf |

 
FHIR operatsioon PDF dokumendi generereerimiseks tervisetõend (Composition) ressursi põhjal 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "ee-health-certificate-pdf",
  "url" : "https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-pdf",
  "version" : "1.0.0",
  "name" : "EEHealthCertificatePdf",
  "title" : "Tervisetõendi PDF genereerimine",
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
  "description" : "FHIR operatsioon PDF dokumendi generereerimiseks tervisetõend (Composition) ressursi põhjal",
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
  "code" : "pdf",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [
    {
      "name" : "role",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "Isiku roll kelle jaoks on PDF genereeritud",
      "type" : "string"
    },
    {
      "name" : "return",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "PDF dokument binaarses formaadis",
      "type" : "Binary"
    }
  ]
}

```
