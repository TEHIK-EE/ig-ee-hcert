# Töötervishoiu tervisekontrolli otsus - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Töötervishoiu tervisekontrolli otsus**

## Example Composition: Töötervishoiu tervisekontrolli otsus



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "1100",
  "meta" : {
    "profile" : [
      "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational"
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
      "id" : "600",
      "meta" : {
        "profile" : [
          "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-occupational-employment"
        ]
      },
      "status" : "final",
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "184104002",
            "display" : "Patient occupation"
          }
        ]
      },
      "performer" : [
        {
          "identifier" : {
            "system" : "https://fhir.ee/sid/org/est/br",
            "value" : "12345678"
          },
          "display" : "Suurepärane OÜ"
        }
      ],
      "component" : [
        {
          "code" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "160922003",
                "display" : "Job details"
              }
            ]
          },
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://fhir.ee/CodeSystem/ametite-klassifikaator",
                "code" : "22122501",
                "display" : "Pediaater"
              }
            ]
          }
        },
        {
          "code" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "224374003",
                "display" : "Regularity of work"
              }
            ]
          },
          "valueQuantity" : {
            "value" : 0.75,
            "system" : "http://unitsofmeasure.org",
            "code" : "1"
          }
        }
      ]
    },
    {
      "resourceType" : "Observation",
      "id" : "700",
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
            "code" : "160910001"
          }
        ]
      }
    },
    {
      "resourceType" : "Observation",
      "id" : "800",
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
          "text" : "Raskemad asjad tõsta ainult abivahenditega"
        }
      ],
      "component" : [
        {
          "code" : {
            "coding" : [
              {
                "system" : "https://fhir.ee/CodeSystem/tervisetoendi-piirangud",
                "code" : "586"
              }
            ]
          },
          "valueQuantity" : {
            "value" : 10,
            "system" : "http://unitsofmeasure.org",
            "code" : "kg"
          }
        }
      ]
    },
    {
      "resourceType" : "Observation",
      "id" : "802",
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
      "component" : [
        {
          "code" : {
            "coding" : [
              {
                "system" : "https://fhir.ee/CodeSystem/tervisetoendi-piirangud",
                "code" : "750"
              }
            ]
          },
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://fhir.ee/CodeSystem/toolaadi-ja-tookeskkonnaga-seotud-ohutegurid",
                "code" : "114",
                "display" : "Kantserogeenid"
              }
            ]
          }
        }
      ]
    },
    {
      "resourceType" : "Observation",
      "id" : "900",
      "meta" : {
        "profile" : [
          "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-related-risk-factor"
        ]
      },
      "status" : "final",
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "80943009",
            "display" : "Risk factor"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/toolaadi-ja-tookeskkonnaga-seotud-ohutegurid",
            "code" : "558",
            "display" : "Raskuste käsitsi teisaldamine"
          }
        ]
      }
    },
    {
      "resourceType" : "Observation",
      "id" : "1000",
      "meta" : {
        "profile" : [
          "https://fhir.ee/hcert/StructureDefinition/ee-health-certificate-work-additional-condition"
        ]
      },
      "status" : "final",
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "225891002",
            "display" : "Fit for work with certain limitations"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tootamiseks-vajalikud-lisatingimused",
            "code" : "personal-protective-equipment"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "https://fhir.ee/hcert/health-certificate-number",
      "value" : "DOC-12345"
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
          "code" : "occupational"
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
  "title" : "Töötervishoiu tervisekontrolli otsus",
  "event" : [
    {
      "period" : {
        "start" : "2024-05-05T00:00:00.000+00:00",
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
            "code" : "employer"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">10006966</div>"
      },
      "entry" : [
        {
          "reference" : "#600"
        }
      ]
    },
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
          "reference" : "#700"
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
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tekst, mis kirjeldab piirangud</div>"
      },
      "entry" : [
        {
          "reference" : "#800"
        },
        {
          "reference" : "#802"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "shortened-reason"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Arst ei usalda isiku uuringute tulemustele</div>"
      }
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Raske füüsiline töö, ei sobi selja probleemide tõttu</div>"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "change-reason"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Kirjavea parandus</div>"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "cancel-reason"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vale otsus</div>"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "suspend-reason"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ootab lisauringute tulemusi</div>"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "risk-factors"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tekst, mis kirjeldab ohutegurid</div>"
      },
      "entry" : [
        {
          "reference" : "#900"
        }
      ]
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
          "identifier" : {
            "system" : "https://fhir.ee/hcert/health-declaration-external-document-number",
            "value" : "HD-67890"
          }
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "work-additional-restrictions"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tekst, mis kirjeldab lisatingumusi</div>"
      },
      "entry" : [
        {
          "reference" : "#1000"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "employer-suggestions"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Töötajale on vaja parem valgustus</div>"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/tervisetoendi-sektsioon",
            "code" : "employee-suggestions"
          }
        ]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tööandja peab paigaldama uut valgustust</div>"
      }
    }
  ]
}

```
