# Match Parameters Profile - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Match Parameters Profile**

## Resource Profile: Match Parameters Profile 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile | *Version*:2026.1.0 |
| Active as of 2026-02-05 | *Computable Name*:MatchParametersProfile |
| **Copyright/Legal**: Copyright 2020-2026 Unabhängige Treuhandstelle der Universitätsmedizin Greifswald | |

 
Match informationen zu zwei Identitäten inklusive der betroffenden Identitäten, Score, MatchResult und LinkId des Matches 

**Usages:**

* Examples for this Profile: [Parameters/Parameters-MatchParametersProfile-example-1](Parameters-Parameters-MatchParametersProfile-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ths-greifswald.ttp-fhir-gw.epix|current/StructureDefinition/StructureDefinition-match-parameters-profile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-match-parameters-profile.csv), [Excel](StructureDefinition-match-parameters-profile.xlsx), [Schematron](StructureDefinition-match-parameters-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "match-parameters-profile",
  "url" : "https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile",
  "version" : "2026.1.0",
  "name" : "MatchParametersProfile",
  "title" : "Match Parameters Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-05",
  "publisher" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
  "contact" : [{
    "name" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ths-greifswald.de/"
    }]
  }],
  "description" : "Match informationen zu zwei Identitäten inklusive der betroffenden Identitäten, Score, MatchResult und LinkId des Matches",
  "copyright" : "Copyright 2020-2026 Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Parameters",
      "path" : "Parameters",
      "short" : "Match Informationen zu zwei Identitäten",
      "comment" : "Match Informationen zu zwei Identitäten"
    },
    {
      "id" : "Parameters.meta",
      "path" : "Parameters.meta",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.meta.versionId",
      "path" : "Parameters.meta.versionId",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.meta.lastUpdated",
      "path" : "Parameters.meta.lastUpdated",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.meta.source",
      "path" : "Parameters.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter",
      "path" : "Parameters.parameter",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "name"
        }],
        "ordered" : true,
        "rules" : "closed"
      },
      "min" : 5,
      "max" : "5"
    },
    {
      "id" : "Parameters.parameter:matchItem",
      "path" : "Parameters.parameter",
      "sliceName" : "matchItem",
      "min" : 2,
      "max" : "2"
    },
    {
      "id" : "Parameters.parameter:matchItem.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "matchItem"
    },
    {
      "id" : "Parameters.parameter:matchItem.resource",
      "path" : "Parameters.parameter.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient"
      }]
    },
    {
      "id" : "Parameters.parameter:matchScore",
      "path" : "Parameters.parameter",
      "sliceName" : "matchScore",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:matchScore.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "matchScore"
    },
    {
      "id" : "Parameters.parameter:matchScore.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Parameters.parameter:matchResult",
      "path" : "Parameters.parameter",
      "sliceName" : "matchResult",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:matchResult.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "matchResult"
    },
    {
      "id" : "Parameters.parameter:matchResult.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Parameters.parameter:linkId",
      "path" : "Parameters.parameter",
      "sliceName" : "linkId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:linkId.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "linkId"
    },
    {
      "id" : "Parameters.parameter:linkId.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
