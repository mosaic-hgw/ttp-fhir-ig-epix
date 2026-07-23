# setReferenceIdentity - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **setReferenceIdentity**

## OperationDefinition: setReferenceIdentity 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/SetReferenceIdentity | *Version*:2026.1.0 |
| Draft as of 2026-02-05 | *Computable Name*:SetReferenceIdentity |

 
Ändert die Referenz-Identität einer vorhandenen Person (MPI-Eintrag), d.h. diejenigen Daten einer Person, die primäre Gültigkeit haben sollen. 

**Konzeptarbeit. Noch nicht implementiert**

## Zweck

Ändert die Referenz-Identität einer vorhandenen Person (MPI-Eintrag), d.h. diejenigen Daten einer Person, die primäre Gültigkeit haben sollen.

## Voraussetzung

Die angegebenen Parameter zur Spezifikation der Matching-Domäne, Quelle der Personeninformation (Patient.meta.source), MPI-ID und Referenz-Identität müssen im E-PIX vorhanden sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$setReferenceIdentity`

Der Funktionsaufruf liefert eine Parameters-Ressource zurück.

Der Parameter "mpiPerson" enthält eine Person-Ressource entsprechend dem allgemeinen Person-Profil. Die Angabe link.assurance='level4' kennzeichnet hierbei die [Referenz-Identität](StructureDefinition-Person.md).

Der Parameter "identity" enthält eine Patient-Ressource entsprechend dem allgemeinen [Patient-Profil](StructureDefinition-Patient.md).

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-SetReferenceIdentity-request-example-1.md)
* [Rückmeldung](Parameters-Parameters-SetReferenceIdentity-response-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "SetReferenceIdentity",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/SetReferenceIdentity",
  "version" : "2026.1.0",
  "name" : "SetReferenceIdentity",
  "title" : "setReferenceIdentity",
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
  "description" : "Ändert die Referenz-Identität einer vorhandenen Person (MPI-Eintrag), d.h. diejenigen Daten einer Person, die primäre Gültigkeit haben sollen.",
  "affectsState" : true,
  "code" : "setReferenceIdentity",
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
    "documentation" : "Identifikator eines MPI-Eintrags (MPI-ID, Person.identifier).",
    "type" : "Identifier"
  },
  {
    "name" : "identityReference",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Referenz zur Identität (Patient-Ressource), die als Referenzidentität gesetzt werden soll.",
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
    "name" : "mpiPerson",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Person-Ressource, die den MPI-Eintrag repräsentiert.",
    "type" : "Person"
  },
  {
    "name" : "identity",
    "use" : "out",
    "min" : 1,
    "max" : "*",
    "documentation" : "Patient-Ressource (analog zu Patienten-Identität, referenziert aus dem MPI-Index der Personen-Ressource).",
    "type" : "Patient"
  }]
}

```
