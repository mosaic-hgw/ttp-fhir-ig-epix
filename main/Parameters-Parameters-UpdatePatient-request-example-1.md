# Parameters-UpdatePatient-request-example-1 - v2025.2.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2025.2.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parameters-UpdatePatient-request-example-1**

## Example Parameters: Parameters-UpdatePatient-request-example-1



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-UpdatePatient-request-example-1",
  "parameter" : [{
    "name" : "domain",
    "valueString" : "MIRACUM"
  },
  {
    "name" : "source",
    "valueString" : "KlinikumXY"
  },
  {
    "name" : "mpiIdentifier",
    "valueIdentifier" : {
      "system" : "https://ths-greifswald.de/fhir/epix/identifier/MPI",
      "value" : "1001000000066"
    }
  },
  {
    "name" : "identity",
    "resource" : {
      "resourceType" : "Patient",
      "meta" : {
        "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
      },
      "name" : [{
        "family" : "xxxxx",
        "given" : ["Stefanie"]
      }],
      "birthDate" : "1962-12-16",
      "address" : [{
        "city" : "Spöck",
        "postalCode" : "76297"
      }]
    }
  },
  {
    "name" : "force",
    "valueBoolean" : false
  }]
}

```
