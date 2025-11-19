# Tervisetõendi PDF genereerimine - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisetõendi PDF genereerimine**

## OperationDefinition: Tervisetõendi PDF genereerimine 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hcert/OperationDefinition/ee-health-certificate-pdf | *Version*:1.0.0 |
| Active as of 2025-11-19 | *Computable Name*:EEHealthCertificatePdf |

 
FHIR operatsioon PDF dokumendi generereerimiseks tervisetõend (Composition) ressursi põhjal 

URL: [base]/Composition/[id]/$pdf

### Parameters

* **Use**: IN
  * **Name**: role
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [string](http://hl7.org/fhir/R5/datatypes.html#string)
  * **Binding**: 
  * **Documentation**: Isiku roll kelle jaoks on PDF genereeritud
* **Use**: OUT
  * **Name**: return
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Binary](http://hl7.org/fhir/R5/binary.html)
  * **Binding**: 
  * **Documentation**: PDF dokument binaarses formaadis



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
  "date" : "2025-11-19T12:11:18+00:00",
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
