# assignIdentityByIdentifier - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **assignIdentityByIdentifier**

## OperationDefinition: assignIdentityByIdentifier 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/AssignIdentityByIdentifier | *Version*:2026.1.0 |
| Draft as of 2026-02-05 | *Computable Name*:AssignIdentityByIdentifier |

 
Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person. Selektionsparameter ist ein Identifier der Identität. 

**Konzeptarbeit. Noch nicht implementiert**

## Zweck

Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person. Suchkriterium für die Identität ist ein Identifier.

## Voraussetzung

Verwendete Parameter-Werte müssen im E-PIX bekannt sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$assignIdentityByIdentifier`

Der Funktionsaufruf liefert eine OperationOutcome-Ressource zurück.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-AssignIdentityByIdentifier-request-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AssignIdentityByIdentifier",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/AssignIdentityByIdentifier",
  "version" : "2026.1.0",
  "name" : "AssignIdentityByIdentifier",
  "title" : "assignIdentityByIdentifier",
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
  "description" : "Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person. Selektionsparameter ist ein Identifier der Identität.",
  "affectsState" : true,
  "code" : "assignIdentityByIdentifier",
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
    "name" : "identityIdentifier",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Identifier der zu verschiebenden Identität (Patient-Ressource).",
    "type" : "Identifier"
  },
  {
    "name" : "mpiIdentifier",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Identifikator des MPI-Eintrags (MPI-ID)",
    "type" : "Identifier"
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
