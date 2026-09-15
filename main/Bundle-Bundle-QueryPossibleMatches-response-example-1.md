# Beispiel Bundle Response für Operation QueryPossibleMatches - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Bundle Response für Operation QueryPossibleMatches**

## Example Bundle: Beispiel Bundle Response für Operation QueryPossibleMatches



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "Bundle-QueryPossibleMatches-response-example-1",
  "type" : "searchset",
  "total" : 45,
  "link" : [{
    "relation" : "self",
    "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=0&_count=1"
  },
  {
    "relation" : "next",
    "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=1&_count=1"
  },
  {
    "relation" : "previous",
    "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=0&_count=1"
  },
  {
    "relation" : "first",
    "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=0&_count=1"
  },
  {
    "relation" : "last",
    "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=44&_count=1"
  }],
  "entry" : [{
    "fullUrl" : "urn:uuid:a1b2c3d4-e5f6-7890-1234-56789abcdef0",
    "resource" : {
      "resourceType" : "Parameters",
      "id" : "MatchResultParameters01",
      "meta" : {
        "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile"]
      },
      "parameter" : [{
        "name" : "matchItem",
        "resource" : {
          "resourceType" : "Patient",
          "id" : "MatchPatient01",
          "meta" : {
            "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
          },
          "name" : [{
            "family" : "Strange",
            "given" : ["Stephan"]
          }],
          "gender" : "male",
          "birthDate" : "1985-04-12"
        }
      },
      {
        "name" : "matchItem",
        "resource" : {
          "resourceType" : "Patient",
          "id" : "MatchPatient02",
          "meta" : {
            "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
          },
          "name" : [{
            "family" : "Strange",
            "given" : ["Stephen"]
          }],
          "gender" : "male",
          "birthDate" : "1985-04-12"
        }
      },
      {
        "name" : "matchScore",
        "valueDecimal" : 0.92
      },
      {
        "name" : "matchResult",
        "valueDecimal" : 1
      },
      {
        "name" : "linkId",
        "valueInteger" : 52
      }]
    }
  }]
}

```
