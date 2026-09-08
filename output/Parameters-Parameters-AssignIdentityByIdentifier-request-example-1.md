# Parameters-AssignIdentityByIdentifier-request-example-1 - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parameters-AssignIdentityByIdentifier-request-example-1**

## Example Parameters: Parameters-AssignIdentityByIdentifier-request-example-1



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-AssignIdentityByIdentifier-request-example-1",
  "parameter" : [{
    "name" : "domain",
    "valueString" : "MIRACUM"
  },
  {
    "name" : "comment",
    "valueString" : "Korrektur nach manueller Begutachtung."
  },
  {
    "name" : "identityIdentifier",
    "valueIdentifier" : {
      "system" : "https://ths-greifswald.de/fhir/epix/identifier/MPI",
      "value" : "1001000000011"
    }
  },
  {
    "name" : "mpiIdentifier",
    "valueIdentifier" : {
      "system" : "https://ths-greifswald.de/fhir/epix/identifier/MPI",
      "value" : "1001000000066"
    }
  }]
}

```
