# Beispiel Bundle Response für Operation QueryPossibleMatches - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

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
        "lastUpdated" : "2026-09-15T16:31:23.000+02:00",
        "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile"]
      },
      "parameter" : [{
        "name" : "matchItem",
        "resource" : {
          "resourceType" : "Patient",
          "id" : "Patient1",
          "meta" : {
            "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
          },
          "identifier" : [{
            "system" : "https://ths-greifswald.de/fhir/epix/identifier/MPI",
            "value" : "1001000000066"
          }],
          "name" : [{
            "family" : "Strange",
            "given" : ["Stephen"]
          }],
          "gender" : "male",
          "birthDate" : "1985-04-12"
        }
      },
      {
        "name" : "matchItem",
        "resource" : {
          "resourceType" : "Patient",
          "id" : "Patient2",
          "meta" : {
            "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
          },
          "identifier" : [{
            "system" : "https://ths-greifswald.de/fhir/epix/identifier/MPI",
            "value" : "1001000000031"
          }],
          "name" : [{
            "family" : "Strange",
            "given" : ["Steven"]
          }],
          "gender" : "male",
          "birthDate" : "1985-04-12"
        }
      },
      {
        "name" : "matchProbability",
        "valueDecimal" : 5.362352
      },
      {
        "name" : "matchCreated",
        "valueDateTime" : "2026-09-15T16:31:23.000+02:00"
      },
      {
        "name" : "matchCreationType",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://ths-greifswald.de/fhir/epix/CodeSystem/MatchCreationTypeCS",
            "code" : "MANUAL",
            "display" : "MANUAL"
          }]
        }
      },
      {
        "name" : "matchPriority",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://ths-greifswald.de/fhir/epix/CodeSystem/MatchPriorityCS",
            "code" : "OPEN",
            "display" : "OPEN"
          }]
        }
      },
      {
        "name" : "matchLinkId",
        "valueInteger" : 52
      }]
    }
  }]
}

```
