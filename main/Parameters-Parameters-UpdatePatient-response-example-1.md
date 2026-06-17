# Parameters-UpdatePatient-response-example-1 - v2025.2.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2025.2.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parameters-UpdatePatient-response-example-1**

## Example Parameters: Parameters-UpdatePatient-response-example-1



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-UpdatePatient-response-example-1",
  "parameter" : [{
    "name" : "matchStatus",
    "valueCoding" : {
      "system" : "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus",
      "code" : "PERFECT_MATCH_WITH_UPDATE"
    }
  },
  {
    "name" : "mpiPerson",
    "resource" : {
      "resourceType" : "Person",
      "id" : "52",
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
  },
  {
    "name" : "identity",
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
    "name" : "identity",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "53",
      "meta" : {
        "versionId" : "1",
        "lastUpdated" : "2021-10-28T09:10:11.120+02:00",
        "source" : "KlinikumXY",
        "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
      },
      "active" : true,
      "name" : [{
        "family" : "xxxxx",
        "given" : ["Stefanie"]
      }],
      "gender" : "male",
      "birthDate" : "1962-12-16",
      "address" : [{
        "city" : "Spöck",
        "postalCode" : "76297"
      }]
    }
  }]
}

```
