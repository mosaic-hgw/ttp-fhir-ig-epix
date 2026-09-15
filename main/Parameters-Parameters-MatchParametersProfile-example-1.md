# Beispiel-Instanz für MatchParametersProfile - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

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
    "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile",
    "https://ths-greifswald.de/fhir/StructureDefinition/epix/Parameters"]
  },
  "parameter" : [{
    "name" : "matchItem",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "Patient1",
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
      "id" : "Patient2",
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
    "valueDecimal" : 0.85
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

```
