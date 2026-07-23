# addPossibleMatch - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **addPossibleMatch**

## OperationDefinition: addPossibleMatch 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPossibleMatch | *Version*:2026.1.0 |
| Draft as of 2026-02-05 | *Computable Name*:AddPossibleMatch |

 
Fügt einen Match zu einem bestimmten MPI-Eintrag einer Domäne hinzu. 

**Konzeptarbeit. Noch nicht implementiert**

## Zweck

Fügt manuell ein Match zu einer Domäne hinzu.

## Voraussetzung

Der angegebene Parameter zur Spezifikation der Matching-Domäne muss im E-PIX konfiguriert sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$addPossibleMatch`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus einem Multi-Part-Parameter zurück.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-AddPossibleMatch-request-example-1.md)
* [Rückmeldung](Parameters-Parameters-AddPossibleMatch-response-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AddPossibleMatch",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPossibleMatch",
  "version" : "2026.1.0",
  "name" : "AddPossibleMatch",
  "title" : "addPossibleMatch",
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
  "description" : "Fügt einen Match zu einem bestimmten MPI-Eintrag einer Domäne hinzu.",
  "affectsState" : true,
  "code" : "addPossibleMatch",
  "comment" : "Fügt einen Match zu einem bestimmten MPI-Eintrag einer Domäne hinzu.",
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
    "name" : "mpiId",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Identifikator eines MPI-Entrags (MPI-ID, Person.identifier).",
    "type" : "Identifier"
  },
  {
    "name" : "aliasMpiId",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Identifikator des matchenden MPI-Entrags.",
    "type" : "Identifier"
  },
  {
    "name" : "match",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Match-Informationen zu zwei Identitäten.",
    "part" : [{
      "name" : "item",
      "use" : "out",
      "min" : 2,
      "max" : "2",
      "documentation" : "Die beiden matchenden Identitäten wie im Request übergeben.",
      "type" : "Patient"
    },
    {
      "name" : "score",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Matching-Score",
      "type" : "decimal"
    },
    {
      "name" : "result",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Matching-Ergebnis",
      "type" : "decimal"
    },
    {
      "name" : "linkId",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Link-ID des Matches",
      "type" : "integer"
    },
    {
      "name" : "comment",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "documentation" : "Anmerkung zum Match",
      "type" : "string"
    }]
  }]
}

```
