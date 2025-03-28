#### Request body

```json

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

#### Response body
```json

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



