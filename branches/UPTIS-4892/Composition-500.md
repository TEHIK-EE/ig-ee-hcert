# Mootorsõiduki juhtimise tervisetõend - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mootorsõiduki juhtimise tervisetõend**

## Example Composition: Mootorsõiduki juhtimise tervisetõend



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "500",
  "meta" : {
    "profile" : [
      "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-driver"
    ]
  },
  "contained" : [
    {
      "resourceType" : "PractitionerRole",
      "id" : "100",
      "practitioner" : {
        "reference" : "Practitioner/36109255737"
      },
      "organization" : {
        "reference" : "Organization/90006399"
      }
    },
    {
      "resourceType" : "Observation",
      "id" : "400",
      "meta" : {
        "profile" : [
          "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-decision"
        ]
      },
      "status" : "final",
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "419183001",
            "display" : "Practitioner decision status"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "171353001"
          }
        ]
      }
    },
    {
      "resourceType" : "Observation",
      "id" : "820",
      "meta" : {
        "profile" : [
          "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-medical-restriction"
        ]
      },
      "status" : "final",
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "146861000181105",
            "display" : "Restriction"
          }
        ]
      },
      "note" : [
        {
          "text" : "Vajalik käsijuhtimisseade"
        }
      ],
      "component" : [
        {
          "code" : {
            "coding" : [
              {
                "system" : "https://fhir.ee/CodeSystem/tervisetoendi-piirangud",
                "code" : "00.98"
              }
            ]
          }
        }
      ]
    }
  ],
  "identifier" : [
    {
      "system" : "https://fhir.ee/hcert/health-certificate-number",
      "value" : "HCERT-321"
    }
  ],
  "status" : "preliminary",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "772786005",
        "display" : "Medical certificate (record artifact)"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
          "code" : "driver-group-I"
        }
      ]
    }
  ],
  "subject" : [
    {
      "reference" : "Patient/200"
    }
  ],
  "date" : "2024-11-05T11:45:29.0437162+00:00",
  "author" : [
    {
      "reference" : "#100"
    }
  ],
  "title" : "Mootorsõiduki juhtimise tervisetõend",
  "event" : [
    {
      "period" : {
        "start" : "2024-11-05T00:00:00.000+00:00",
        "end" : "2025-11-05T00:00:00.000+00:00"
      }
    }
  ],
  "section" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "decision"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "#400"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "medical-restrictions"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "#820"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "reject-reason"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ei tunne värve</div>"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "health-declaration"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "QuestionnaireResponse/300"
        }
      ]
    }
  ]
}

```
