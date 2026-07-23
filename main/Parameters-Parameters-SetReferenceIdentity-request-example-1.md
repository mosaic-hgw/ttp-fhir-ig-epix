# Parameters-SetReferenceIdentity-request-example-1 - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parameters-SetReferenceIdentity-request-example-1**

## Example Parameters: Parameters-SetReferenceIdentity-request-example-1



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-SetReferenceIdentity-request-example-1",
  "parameter" : [{
    "name" : "comment",
    "valueString" : "aufgrund neuerer Informationen"
  },
  {
    "name" : "mpiId",
    "valueIdentifier" : {
      "system" : "https://ths-greifswald.de/fhir/epix/identifier/MPI",
      "value" : "1001000000066"
    }
  },
  {
    "name" : "identityReference",
    "valueId" : "53"
  }]
}

```
