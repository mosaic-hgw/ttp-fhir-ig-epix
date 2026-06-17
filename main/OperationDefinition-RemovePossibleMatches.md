# removePossibleMatches - v2025.2.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2025.2.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **removePossibleMatches**

## OperationDefinition: removePossibleMatches 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/RemovePossibleMatches | *Version*:2025.2.0 |
| Draft as of 2026-02-05 | *Computable Name*:RemovePossibleMatches |

 
Entfernt Matches aus einer Domäne. 

**Konzeptarbeit. Noch nicht implementiert**

## Zweck

Entfernt Matches aus einer Domäne.

## Voraussetzung

Der angegebene Parameter zur Spezifikation der Matching-Domäne muss im E-PIX konfiguriert sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$removePossibleMatches`

Der Funktionsaufruf liefert eine OperationOutcome-Ressource zurück.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-RemovePossibleMatches-request-example-1.md)
* [Rückmeldung](Parameters-Parameters-RemovePossibleMatches-response-example-1.md)



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
  "date" : "2026-02-05",
  "publisher" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
  "contact" : [{
    "name" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ths-greifswald.de/"
    }]
  }],
  "description" : "Entfernt Matches aus einer Domäne.",
  "affectsState" : true,
  "code" : "removePossibleMatches",
  "comment" : "(Mögliche) Matches von Identitäten entfernen.",
  "system" : true,
  "type" : false,
  "instance" : false,
  "parameter" : [{
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
  }]
}

```
