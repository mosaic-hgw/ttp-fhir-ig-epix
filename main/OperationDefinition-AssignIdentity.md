# assignIdentity - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **assignIdentity**

## OperationDefinition: assignIdentity 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/AssignIdentity | *Version*:2026.1.0 |
| Draft as of 2026-02-05 | *Computable Name*:AssignIdentity |

 
Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person, um eine erkannte Dublette (Match Result) zu beheben. 

**Konzeptarbeit. Noch nicht implementiert**

## Zweck

Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person, um eine erkannte Dublette (Match Result = possible Match) zu beheben.

## Voraussetzung

Verwendete Parameter-Werte müssen im E-PIX bekannt sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$assignIdentity`

Der Funktionsaufruf liefert eine OperationOutcome-Ressource zurück.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-AssignIdentity-request-example-1.md)
* [Rückmeldung](OperationOutcome-OperationOutcome-AssignIdentity-response-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AssignIdentity",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/AssignIdentity",
  "version" : "2026.1.0",
  "name" : "AssignIdentity",
  "title" : "assignIdentity",
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
  "description" : "Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person, um eine erkannte Dublette (Match Result) zu beheben.",
  "affectsState" : true,
  "code" : "assignIdentity",
  "system" : true,
  "type" : false,
  "instance" : false,
  "parameter" : [{
    "name" : "domain",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Angabe der Matching-Domäne",
    "type" : "string"
  },
  {
    "name" : "linkId",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Link-ID des Matches (Dubletteneintrag). Ermittelbar mittels Operation queryPossibleMatches.",
    "type" : "integer"
  },
  {
    "name" : "identityReference",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Referenz zur korrekten Ausprägung (Identität, Match-Item, Patient-Ressource), die das Ziel der Verschiebung ist.",
    "type" : "Reference"
  },
  {
    "name" : "comment",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Anmerkung zum Änderungsvorgang",
    "type" : "string"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Rückinformation zum Merge-Vorgang.",
    "type" : "OperationOutcome"
  }]
}

```
