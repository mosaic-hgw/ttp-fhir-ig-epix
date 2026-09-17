# queryPossibleMatches - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **queryPossibleMatches**

## OperationDefinition: queryPossibleMatches 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches | *Version*:2026.2.0-rc |
| Draft as of 2026-09-16 | *Computable Name*:QueryPossibleMatches |

 
Gibt possible Matches des E-PIX zurück. Begrenzung auf eine spezifische Domäne und/oder eine spezifische Person (MPI-Eintrag) ist möglich. 

**Konzeptarbeit. Noch nicht implementiert**

## Zweck

Possible Matches des E-PIX abfragen. Filterung auf Domäne und/oder spezifische Person möglich.

## Voraussetzung

Der angegebene Parameter zur Spezifikation der Matching-Domäne muss im E-PIX konfiguriert sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$queryPossibleMatches`

Paging wird mittels der optionalen In-Parameter _offset und _count sowie der optionalen Out-Parameter prev, self und next realisiert. Die Paging-Mechanismen folgen den Vorgaben unter http://www.hl7.org/fhir/r4/search.html - allerdings ist der komplexe Out-Parameter 'match' der Bezug für die Zählung.

Der Funktionsaufruf liefert ein SearchSet-Bundle zurück. Das Bundle-Total gibt die Gesamtanzahl der offenen Possible-Matches im E-PIX zurück.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-QueryPossibleMatches-request-example-1.md)
* [Rückmeldung](Bundle-Bundle-QueryPossibleMatches-response-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "QueryPossibleMatches",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches",
  "version" : "2026.2.0-rc",
  "name" : "QueryPossibleMatches",
  "title" : "queryPossibleMatches",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-09-16",
  "publisher" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
  "contact" : [{
    "name" : "Unabhängige Treuhandstelle der Universitätsmedizin Greifswald",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ths-greifswald.de/"
    }]
  }],
  "description" : "Gibt possible Matches des E-PIX zurück. Begrenzung auf eine spezifische Domäne und/oder eine spezifische Person (MPI-Eintrag) ist möglich.",
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
    "type" : "integer"
  },
  {
    "name" : "domain",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Angabe der Matching-Domaene",
    "type" : "string"
  },
  {
    "name" : "mpiIdentifier",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Identifikator eines MPI-Entrags (MPI-ID, Person.identifier).",
    "type" : "Identifier"
  },
  {
    "name" : "match",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Ergebnis-Bundle mit Match-Informationen.",
    "type" : "Bundle"
  }]
}

```
