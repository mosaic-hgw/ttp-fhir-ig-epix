# Match Creation Type CodeSystem - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Match Creation Type CodeSystem**

## CodeSystem: Match Creation Type CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/epix/CodeSystem/MatchCreationTypeCS | *Version*:2026.2.0-rc |
| Active as of 2026-09-17 | *Computable Name*:MatchCreationTypeCS |

 
Codes zur Kennzeichnung, wie ein Match erzeugt wurde. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Match Creation Type ValueSet](ValueSet-MatchCreationTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MatchCreationTypeCS",
  "url" : "https://ths-greifswald.de/fhir/epix/CodeSystem/MatchCreationTypeCS",
  "version" : "2026.2.0-rc",
  "name" : "MatchCreationTypeCS",
  "title" : "Match Creation Type CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-17T12:28:54+00:00",
  "publisher" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
  "contact" : [{
    "name" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ths-greifswald.de/"
    }]
  }],
  "description" : "Codes zur Kennzeichnung, wie ein Match erzeugt wurde.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "MANUAL",
    "display" : "MANUAL",
    "definition" : "Der Match wurde durch einen Benutzer manuell erzeugt."
  },
  {
    "code" : "AUTOMATIC",
    "display" : "AUTOMATIC",
    "definition" : "Der Match wurde automatisch erzeugt."
  },
  {
    "code" : "DEFAULT",
    "display" : "DEFAULT",
    "definition" : "Der Match wurde gemäß Standardeinstellung erzeugt."
  }]
}

```
