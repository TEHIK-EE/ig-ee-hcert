# Patsient Taavi Kask - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patsient Taavi Kask**

## Example Patient: Patsient Taavi Kask

Profile: [EE MPI Patient Verified](https://fhir.ee/packages/mpi/1.5.0/site/StructureDefinition-ee-mpi-patient-verified.html)

Taavi Kask (official) Male, DoB Unknown ( https://fhir.ee/sid/pid/est/ni#39406240016)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "200",
  "meta" : {
    "profile" : [
      "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
    ]
  },
  "identifier" : [
    {
      "system" : "https://fhir.ee/sid/pid/est/ni",
      "value" : "39406240016"
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "official",
      "family" : "Kask",
      "given" : ["Taavi"]
    }
  ],
  "gender" : "male"
}

```
