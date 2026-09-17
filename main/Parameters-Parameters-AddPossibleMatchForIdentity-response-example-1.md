# Beispiel-Instanz für MatchParametersProfile AddPossibleMatchForIdentity - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel-Instanz für MatchParametersProfile AddPossibleMatchForIdentity**

## Example Parameters: Beispiel-Instanz für MatchParametersProfile AddPossibleMatchForIdentity



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-AddPossibleMatchForIdentity-response-example-1",
  "meta" : {
    "lastUpdated" : "2026-09-15T16:31:23.000+02:00",
    "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile"]
  },
  "parameter" : [{
    "name" : "matchItem",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "Patient7",
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
      "id" : "Patient8",
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

```
