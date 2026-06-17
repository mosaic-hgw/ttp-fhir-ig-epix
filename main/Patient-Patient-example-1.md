# Patient-example-1 - v2025.2.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2025.2.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient-example-1**

## Example Patient: Patient-example-1

Last updated: 2021-05-19 17:50:23+0200

Profile: [Consent Management: Patient](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.2&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient)

Anonymous Patient (no stated gender), DoB Unknown ( Anonymous identifier: dic_1H51T)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Patient-example-1",
  "meta" : {
    "lastUpdated" : "2021-05-19T17:50:23.000+02:00",
    "profile" : ["http://fhir.de/ConsentManagement/StructureDefinition/Patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON",
        "display" : "Anonymous identifier"
      }]
    },
    "system" : "https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym",
    "value" : "dic_1H51T"
  }]
}

```
