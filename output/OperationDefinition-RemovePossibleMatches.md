# removePossibleMatches - v2025.2.0



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "RemovePossibleMatches",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/RemovePossibleMatches",
  "version" : "2025.2.0",
  "name" : "RemovePossibleMatches",
  "title" : "removePossibleMatches",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2025-06-12",
  "publisher" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
  "contact" : [
    {
      "name" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ths-greifswald.de/"
        }
      ]
    }
  ],
  "description" : "Entfernt Matches aus einer Domäne.",
  "affectsState" : true,
  "code" : "removePossibleMatches",
  "comment" : "(Mögliche) Matches von Identitäten entfernen.",
  "system" : true,
  "type" : false,
  "instance" : false,
  "parameter" : [
    {
      "name" : "domain",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "Angabe der Matching-Domaene",
      "type" : "string"
    },
    {
      "name" : "linkId",
      "use" : "in",
      "min" : 1,
      "max" : "*",
      "documentation" : "Link-ID eines zu löschen Matches.",
      "type" : "integer"
    },
    {
      "name" : "comment",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Anmerkung zum Löschvorgang",
      "type" : "string"
    },
    {
      "name" : "return",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Rückinformation zum Löschvorgang.",
      "type" : "OperationOutcome"
    }
  ]
}

```
