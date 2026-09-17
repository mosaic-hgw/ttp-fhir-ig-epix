# Match Parameters Profile - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Match Parameters Profile**

## Resource Profile: Match Parameters Profile 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile | *Version*:2026.2.0-rc |
| Active as of 2026-09-16 | *Computable Name*:MatchParametersProfile |
| **Copyright/Legal**: Copyright 2020-2026 Unabhängige Treuhandstelle der Universitätsmedizin Greifswald | |

 
Match informationen zu zwei Identitäten inklusive der betroffenden Identitäten, Score, MatchResult und LinkId des Matches 

**Usages:**

* Examples for this Profile: [Parameters/Parameters-AddPossibleMatchForIdentity-response-example-1](Parameters-Parameters-AddPossibleMatchForIdentity-response-example-1.md), [Parameters/Parameters-AddPossibleMatchForPerson-response-example-1](Parameters-Parameters-AddPossibleMatchForPerson-response-example-1.md) and [Parameters/Parameters-MatchParametersProfile-example-1](Parameters-Parameters-MatchParametersProfile-example-1.md)

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
  "version" : "2026.2.0-rc",
  "name" : "MatchParametersProfile",
  "title" : "Match Parameters Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-16",
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
      "min" : 7,
      "max" : "7"
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
      "id" : "Parameters.parameter:matchProbability",
      "path" : "Parameters.parameter",
      "sliceName" : "matchProbability",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:matchProbability.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "matchProbability"
    },
    {
      "id" : "Parameters.parameter:matchProbability.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Parameters.parameter:matchCreated",
      "path" : "Parameters.parameter",
      "sliceName" : "matchCreated",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:matchCreated.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "matchCreated"
    },
    {
      "id" : "Parameters.parameter:matchCreated.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Parameters.parameter:matchCreationType",
      "path" : "Parameters.parameter",
      "sliceName" : "matchCreationType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:matchCreationType.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "matchCreationType"
    },
    {
      "id" : "Parameters.parameter:matchCreationType.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://ths-greifswald.de/fhir/epix/ValueSet/MatchCreationTypeVS"
      }
    },
    {
      "id" : "Parameters.parameter:matchPriority",
      "path" : "Parameters.parameter",
      "sliceName" : "matchPriority",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:matchPriority.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "matchPriority"
    },
    {
      "id" : "Parameters.parameter:matchPriority.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://ths-greifswald.de/fhir/epix/ValueSet/MatchPriorityVS"
      }
    },
    {
      "id" : "Parameters.parameter:matchLinkId",
      "path" : "Parameters.parameter",
      "sliceName" : "matchLinkId",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:matchLinkId.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "matchLinkId"
    },
    {
      "id" : "Parameters.parameter:matchLinkId.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
