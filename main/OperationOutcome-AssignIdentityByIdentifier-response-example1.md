# AssignIdentityByIdentifier-response-example1 - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssignIdentityByIdentifier-response-example1**

## Example OperationOutcome: AssignIdentityByIdentifier-response-example1

### Issues

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** | **Diagnostics** |
| * | Information | Informational Note | existing resource updated | Identity assigned. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "AssignIdentityByIdentifier-response-example1",
  "issue" : [{
    "severity" : "information",
    "code" : "informational",
    "details" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/operation-outcome",
        "code" : "MSG_UPDATED"
      }]
    },
    "diagnostics" : "Identity assigned."
  }]
}

```
