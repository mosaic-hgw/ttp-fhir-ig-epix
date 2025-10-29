# Parameters-AddPatient-request-example-1 - v2025.1.0



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-AddPatient-request-example-1",
  "parameter" : [
    {
      "name" : "domain",
      "valueString" : "MIRACUM"
    },
    {
      "name" : "source",
      "valueString" : "KlinikumXY"
    },
    {
      "name" : "identity",
      "resource" : {
        "resourceType" : "Patient",
        "meta" : {
          "profile" : [
            "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
          ]
        },
        "extension" : [
          {
            "extension" : [
              {
                "valueString" : "A38"
              },
              {
                "valueBoolean" : true
              }
            ]
          }
        ],
        "identifier" : [
          {
            "system" : "https://ths-greifswald.de/fhir/epix/identifier/SystemXY",
            "value" : "ABC_12345"
          }
        ],
        "name" : [
          {
            "family" : "xxxxx",
            "given" : ["Stefanie"]
          }
        ],
        "birthDate" : "1962-12-17",
        "address" : [
          {
            "city" : "Spöck",
            "postalCode" : "76297"
          },
          {
            "line" : ["Musterstrasse 1"],
            "city" : "Greifswald",
            "postalCode" : "17487"
          }
        ]
      }
    },
    {
      "name" : "saveAction",
      "valueCoding" : {
        "system" : "https://ths-greifswald.de/fhir/CodeSystem/epix/SaveAction",
        "code" : "SAVE_ALL"
      }
    },
    {
      "name" : "forceReferenceUpdate",
      "valueBoolean" : false
    }
  ]
}

```
