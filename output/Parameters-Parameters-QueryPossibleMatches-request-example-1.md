# Beispiel Request für Operation QueryPossibleMatches - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Request für Operation QueryPossibleMatches**

## Example Parameters: Beispiel Request für Operation QueryPossibleMatches



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-QueryPossibleMatches-request-example-1",
  "parameter" : [{
    "name" : "_offset",
    "valueInteger" : 0
  },
  {
    "name" : "_count",
    "valueInteger" : 1
  },
  {
    "name" : "domain",
    "valueString" : "MIRACUM"
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
