# updatePatient - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **updatePatient**

## OperationDefinition: updatePatient 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/UpdatePatient | *Version*:2026.1.0 |
| Active as of 2026-02-05 | *Computable Name*:UpdatePatient |

 
Aktualisiert Patienten-Identitäten eines MPI-Eintrags. 

## Zweck

Aktualisierung eines **vorhandenen Datensatzes** von personenidentifizierenden Informationen eines vorhandenen Patienten unter Angabe eines vormals vergebenen Master Person Index (MPI ID).

## Voraussetzung

Die angegebenen Parameter zur Spezifikation der Matching-Domäne, der Datenquelle und der MPI-ID müssen im E-PIX vorhanden sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$updatePatient`

Der Funktionsaufruf liefert eine Parameters-Ressource zurück.

Der Parameter "identity" enthält eine Patient-Ressource entsprechend dem allgemeinen [Patient-Profil](StructureDefinition-Patient.md).

Der Parameter "mpiPerson" enthält eine Person-Ressource entsprechend dem allgemeinen Person-Profil. Die Angabe link.assurance='level4' kennzeichnet hierbei die [Referenz-Identität](StructureDefinition-Person.md).

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-UpdatePatient-request-example-1.md)
* [Rückmeldung](Parameters-Parameters-UpdatePatient-response-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "UpdatePatient",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/UpdatePatient",
  "version" : "2026.1.0",
  "name" : "UpdatePatient",
  "title" : "updatePatient",
  "status" : "active",
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
  "description" : "Aktualisiert Patienten-Identitäten eines MPI-Eintrags.",
  "affectsState" : true,
  "code" : "updatePatient",
  "comment" : "Aktualisiert Patienten-Identitäten eines MPI-Eintrags.",
  "system" : true,
  "type" : false,
  "instance" : false,
  "parameter" : [{
    "name" : "domain",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Angabe der Matchingdomain",
    "type" : "string"
  },
  {
    "name" : "source",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Datenquelle",
    "type" : "string"
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
    "name" : "identity",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Patient-Ressource (analog zu der Patienten-Identität)",
    "type" : "Patient"
  },
  {
    "name" : "force",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "matchStatus",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Match-Status aus dem Matching der übermittelten Patienten-Identität",
    "type" : "Coding",
    "binding" : {
      "strength" : "required",
      "valueSet" : "https://ths-greifswald.de/fhir/ValueSet/epix/MatchStatus"
    }
  },
  {
    "name" : "mpiPerson",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Person-Ressource, die den MPI-Eintrag repräsentiert.",
    "type" : "Person"
  },
  {
    "name" : "identity",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "documentation" : "Patient-Ressource (analog zu Patienten-Identität, referenziert aus dem MPI-Index der Personen-Ressource).",
    "type" : "Patient"
  }]
}

```
