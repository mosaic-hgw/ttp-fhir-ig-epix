# Match Priority CodeSystem - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Match Priority CodeSystem**

## CodeSystem: Match Priority CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/epix/CodeSystem/MatchPriorityCS | *Version*:2026.2.0-rc |
| Active as of 2026-09-17 | *Computable Name*:MatchPriorityCS |

 
Priorität der Bearbeitung eines Matches. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Match Priority ValueSet](ValueSet-MatchPriorityVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MatchPriorityCS",
  "url" : "https://ths-greifswald.de/fhir/epix/CodeSystem/MatchPriorityCS",
  "version" : "2026.2.0-rc",
  "name" : "MatchPriorityCS",
  "title" : "Match Priority CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-17T14:43:24+00:00",
  "publisher" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
  "contact" : [{
    "name" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ths-greifswald.de/"
    }]
  }],
  "description" : "Priorität der Bearbeitung eines Matches.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "OPEN",
    "display" : "OPEN",
    "definition" : "Der Match muss noch bearbeitet werden."
  },
  {
    "code" : "POSTPONED",
    "display" : "POSTPONED",
    "definition" : "Der Match wurde bereits gesichtet, die Bearbeitung wurde jedoch zunächst verschoben."
  }]
}

```
