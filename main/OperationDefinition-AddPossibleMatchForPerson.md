# addPossibleMatchForPerson - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **addPossibleMatchForPerson**

## OperationDefinition: addPossibleMatchForPerson 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPossibleMatchForPerson | *Version*:2026.1.0 |
| Draft as of 2026-02-05 | *Computable Name*:AddPossibleMatchForPerson |

 
Fügt einen Match zu einer Person anhand von MPIs einer Domäne hinzu. 

**Konzeptarbeit. Noch nicht implementiert**

## Zweck

Fügt manuell ein Match anhand von MPI Ids zu einer Domäne hinzu.

## Voraussetzung

Verwendete Parameter-Werte müssen im E-PIX bekannt sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$addPossibleMatchForPerson`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus einem Multi-Part-Parameter zurück.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-AddPossibleMatchForPerson-request-example-1.md)
* [Rückmeldung](Parameters-Parameters-AddPossibleMatchForPerson-response-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AddPossibleMatchForPerson",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPossibleMatchForPerson",
  "version" : "2026.1.0",
  "name" : "AddPossibleMatchForPerson",
  "title" : "addPossibleMatchForPerson",
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
  "description" : "Fügt einen Match zu einer Person anhand von MPIs einer Domäne hinzu.",
  "affectsState" : true,
  "code" : "addPossibleMatchForPerson",
  "comment" : "Fügt einen Match zu einer Person anhand von MPIs einer Domäne hinzu.",
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
    "name" : "mpiIdentifier",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Identifikator eines MPI-Entrags (MPI-ID, Person.identifier).",
    "type" : "Identifier"
  },
  {
    "name" : "mpiIdentifierAlias",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Aliasangabe bezogen auf Identifikator eines MPI-Entrags (MPI-ID, Person.identifier).",
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
      "documentation" : "Die beiden matchenden Personen wie im Request übergeben.",
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
