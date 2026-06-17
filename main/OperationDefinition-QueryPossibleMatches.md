# queryPossibleMatches - v2025.2.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2025.2.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **queryPossibleMatches**

## OperationDefinition: queryPossibleMatches 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches | *Version*:2025.2.0 |
| Draft as of 2026-02-05 | *Computable Name*:QueryPossibleMatches |

 
Gibt Matches zu einer Domäne oder zu einem bestimmten MPI-Eintrag aus. 

**Konzeptarbeit. Noch nicht implementiert**

## Zweck

Matchende Identitäts-Informationen sowie zugehörige Meta-Informationen ausgeben.

## Voraussetzung

Der angegebene Parameter zur Spezifikation der Matching-Domäne muss im E-PIX konfiguriert sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$queryPossibleMatches`

Paging wird mittels der optionalen In-Parameter _offset und _count sowie der optionalen Out-Parameter prev, self und next realisiert. Die Paging-Mechanismen folgen den Vorgaben unter http://www.hl7.org/fhir/r4/search.html - allerdings ist der komplexe Out-Parameter 'match' der Bezug für die Zählung.

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus einem oder mehreren Multi-Part-Parametern zurück.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-QueryPossibleMatches-request-example-1.md)
* [Rückmeldung](Parameters-Parameters-QueryPossibleMatches-response-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "QueryPossibleMatches",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches",
  "version" : "2025.2.0",
  "name" : "QueryPossibleMatches",
  "title" : "queryPossibleMatches",
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
  "description" : "Gibt Matches zu einer Domäne oder zu einem bestimmten MPI-Eintrag aus.",
  "affectsState" : false,
  "code" : "queryPossibleMatches",
  "comment" : "Matchende Identitäts-Informationen sowie zugehörige Meta-Informationen ausgeben.",
  "system" : true,
  "type" : false,
  "instance" : false,
  "parameter" : [{
    "name" : "_offset",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Offset für Paging (Anzahl der zu überspringenden match-Parameter)",
    "type" : "integer"
  },
  {
    "name" : "_count",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Anzahl der zurück zu gebenden match-Parameter (Paging)",
    "type" : "string"
  },
  {
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
    "min" : 0,
    "max" : "1",
    "documentation" : "Identifikator eines MPI-Entrags (MPI-ID, Person.identifier). Ist dieser Parameter nicht angegeben, werden alle Matches zur Domäne zurück gegeben.",
    "type" : "Identifier"
  },
  {
    "name" : "prev",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Bei Paging: URL der vorausgehenden Seite.",
    "type" : "uri"
  },
  {
    "name" : "self",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Bei Paging: URL der aktuellen Seite.",
    "type" : "uri"
  },
  {
    "name" : "next",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Bei Paging: URL der folgenden Seite.",
    "type" : "uri"
  },
  {
    "name" : "match",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "documentation" : "Match-Informationen zu zwei Identitäten.",
    "part" : [{
      "name" : "matchItem",
      "use" : "out",
      "min" : 2,
      "max" : "2",
      "documentation" : "Die beiden matchenden Identitäten.",
      "type" : "Patient"
    },
    {
      "name" : "matchScore",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Matching-Score",
      "type" : "decimal"
    },
    {
      "name" : "matchResult",
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
