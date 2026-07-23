# Person-example-1 - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Person-example-1**

## Example Person: Person-example-1

Last updated: 2021-06-17 08:28:03+0200

Profile: [Person](StructureDefinition-Person.md)

**identifier**: `https://ths-greifswald.de/fhir/epix/identifier/MPI`/1001000000066

**managingOrganization**: Identifier: MIRACUM

**active**: true

> **link****target**: [Patient/52](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.3&canonical=http://fhir.org/packages/de.einwilligungsmanagement/Patient/52)

> **link****target**: [Patient/53](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.3&canonical=http://fhir.org/packages/de.einwilligungsmanagement/Patient/53)**assurance**: Level 4



## Resource Content

```json
{
  "resourceType" : "Person",
  "id" : "Person-example-1",
  "meta" : {
    "lastUpdated" : "2021-06-17T08:28:03.200+02:00",
    "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Person"]
  },
  "identifier" : [{
    "system" : "https://ths-greifswald.de/fhir/epix/identifier/MPI",
    "value" : "1001000000066"
  }],
  "managingOrganization" : {
    "identifier" : {
      "value" : "MIRACUM"
    }
  },
  "active" : true,
  "link" : [{
    "target" : {
      "reference" : "Patient/52"
    }
  },
  {
    "target" : {
      "reference" : "Patient/53"
    },
    "assurance" : "level4"
  }]
}

```
