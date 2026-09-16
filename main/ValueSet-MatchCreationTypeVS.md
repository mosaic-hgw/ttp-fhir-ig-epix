# Match Creation Type ValueSet - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Match Creation Type ValueSet**

## ValueSet: Match Creation Type ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/epix/ValueSet/MatchCreationTypeVS | *Version*:2026.2.0-rc |
| Active as of 2026-09-16 | *Computable Name*:MatchCreationTypeVS |

 
ValueSet aller zugelassenen Erstellungsarten eines Matches. 

 **References** 

* [Match Parameters Profile](StructureDefinition-match-parameters-profile.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "MatchCreationTypeVS",
  "url" : "https://ths-greifswald.de/fhir/epix/ValueSet/MatchCreationTypeVS",
  "version" : "2026.2.0-rc",
  "name" : "MatchCreationTypeVS",
  "title" : "Match Creation Type ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-16T09:07:42+00:00",
  "publisher" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
  "contact" : [{
    "name" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ths-greifswald.de/"
    }]
  }],
  "description" : "ValueSet aller zugelassenen Erstellungsarten eines Matches.",
  "compose" : {
    "include" : [{
      "system" : "https://ths-greifswald.de/fhir/epix/CodeSystem/MatchCreationTypeCS"
    }]
  }
}

```
