# Parameters-AddPossibleMatch-response-example-1 - v2025.2.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2025.2.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parameters-AddPossibleMatch-response-example-1**

## Example Parameters: Parameters-AddPossibleMatch-response-example-1



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-AddPossibleMatch-response-example-1",
  "parameter" : [{
    "name" : "match",
    "part" : [{
      "name" : "item",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "52",
        "meta" : {
          "versionId" : "1",
          "lastUpdated" : "2021-06-17T08:28:03.200+02:00",
          "source" : "dummy_safe_source",
          "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
        },
        "active" : true,
        "name" : [{
          "family" : "xxxxx",
          "given" : ["Stefanie"]
        }],
        "gender" : "male",
        "birthDate" : "1962-12-17"
      }
    },
    {
      "name" : "item",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "53",
        "meta" : {
          "versionId" : "1",
          "lastUpdated" : "2021-06-17T08:28:24.180+02:00",
          "source" : "dummy_safe_source",
          "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
        },
        "active" : true,
        "name" : [{
          "family" : "xxxxx",
          "given" : ["Stefanie"]
        }],
        "gender" : "male",
        "birthDate" : "1962-12-16"
      }
    },
    {
      "name" : "score",
      "valueDecimal" : 0.965
    },
    {
      "name" : "result",
      "valueDecimal" : 0.952
    },
    {
      "name" : "linkId",
      "valueInteger" : 5654986
    },
    {
      "name" : "comment",
      "valueString" : "This match was added manually!"
    }]
  }]
}

```
