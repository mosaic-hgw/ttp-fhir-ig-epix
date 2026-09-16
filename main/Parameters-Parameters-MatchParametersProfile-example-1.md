# Beispiel-Instanz für MatchParametersProfile - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel-Instanz für MatchParametersProfile**

## Example Parameters: Beispiel-Instanz für MatchParametersProfile



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-MatchParametersProfile-example-1",
  "meta" : {
    "lastUpdated" : "2026-09-15T16:31:23.000+02:00",
    "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile"]
  },
  "parameter" : [{
    "name" : "matchItem",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "Patient3",
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
    "name" : "matchItem",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "Patient4",
      "meta" : {
        "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
      },
      "name" : [{
        "family" : "Strange",
        "given" : ["Steven"]
      }],
      "gender" : "male",
      "birthDate" : "1985-04-12"
    }
  },
  {
    "name" : "matchScore",
    "valueDecimal" : 0.85
  },
  {
    "name" : "matchResult",
    "valueDecimal" : 1
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
    "name" : "linkId",
    "valueInteger" : 52
  }]
}

```
