# addPossibleMatchForIdentity - v2026.2.0-rc

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.2.0-rc - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **addPossibleMatchForIdentity**

## OperationDefinition: addPossibleMatchForIdentity 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPossibleMatchForIdentity | *Version*:2026.2.0-rc |
| Draft as of 2026-09-16 | *Computable Name*:AddPossibleMatchForIdentity |

 
Fügt einen Match zu einer Person anhand von IdentityIds einer Domäne hinzu. 

**Konzeptarbeit. Noch nicht implementiert**

## Zweck

Fügt manuell ein Match anhand von IdentityIds zu einer Domäne hinzu.

## Voraussetzung

Verwendete Parameter-Werte müssen im E-PIX bekannt sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$addPossibleMatchForIdentity`

Der Funktionsaufruf liefert eine Parameters-Ressource gemäß dem [Match Parameters Profile](StructureDefinition-match-parameters-profile.md) zurück.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-AddPossibleMatchForIdentity-request-example-1.md)
* [Rückmeldung](Parameters-Parameters-AddPossibleMatchForIdentity-response-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AddPossibleMatchForIdentity",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPossibleMatchForIdentity",
  "version" : "2026.2.0-rc",
  "name" : "AddPossibleMatchForIdentity",
  "title" : "addPossibleMatchForIdentity",
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
  "description" : "Fügt einen Match zu einer Person anhand von IdentityIds einer Domäne hinzu.",
  "affectsState" : true,
  "code" : "addPossibleMatchForIdentity",
  "comment" : "Fügt einen Match zu einer Person anhand von IdentityIds einer Domäne hinzu.",
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
    "name" : "identityReference",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Referenz auf eine Identität (Patient-Ressource)",
    "type" : "Reference"
  },
  {
    "name" : "identityReferenceAlias",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Referenz auf ein Alias der Identität (Patient-Ressource)",
    "type" : "Reference"
  },
  {
    "name" : "match",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Ergebnis mit Match-Informationen vom Typ Match Parameters Profile.",
    "type" : "Parameters"
  }]
}

```
