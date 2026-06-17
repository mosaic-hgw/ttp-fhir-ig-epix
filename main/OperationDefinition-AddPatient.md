# addPatient - v2025.2.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2025.2.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **addPatient**

## OperationDefinition: addPatient 

| | |
| :--- | :--- |
| *Official URL*:https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPatient | *Version*:2025.2.0 |
| Draft as of 2026-02-05 | *Computable Name*:AddPatient |

 
Fügt eine oder mehrere Patientenidentitäten hinzu. 

## Zweck

Anlegen und Matching (**Record Linkage**) von übermittelten Patienten-Resourcen auf Basis der personenidentifizierenden Informationen (IDAT) im [E-PIX](https://www.ths-greifswald.de/e-pix).

Dabei werden eine oder mehrere Patientenidentitäten im E-PIX erzeugt. Nach Abschluss des Record Linkage Prozesses werden für jede übermittelte Patienten-Resource der **Master Person Index (MPI ID)**, die MPI-Zuordnung (Person-Ressource) sowie der Match-Status und vorhandene Identitäten zurückgegeben.

## Voraussetzung

Die angegebenen Parameter zur Spezifikation der Matching-Domäne und der Datenquelle müssen im E-PIX konfiguriert sein.

## Aufruf und Rückgabe

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$addPatient`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus einem oder mehreren Multi-Part-Parametern zurück.

Die Parameter "identity" und "sourceIdentity" enthalten eine Patient-Ressource entsprechend dem allgemeinen [Patient-Profil](StructureDefinition-Patient.md).

Der Parameter "mpiPerson" enthält eine Person-Ressource entsprechend dem allgemeinen Person-Profil. Die Angabe link.assurance='level4' kennzeichnet hierbei die [Referenz-Identität](StructureDefinition-Person.md).

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-AddPatient-request-example-1.md)
* [Rückmeldung](Parameters-Parameters-AddPatient-response-example-1.md)



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AddPatient",
  "url" : "https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPatient",
  "version" : "2025.2.0",
  "name" : "AddPatient",
  "title" : "addPatient",
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
  "description" : "Fügt eine oder mehrere Patientenidentitäten hinzu.",
  "affectsState" : true,
  "code" : "addPatient",
  "comment" : "Anlegen und Matching (**Record Linkage**) von übermittelten Patienten-Resourcen auf Basis der personenidentifizierenden Informationen (IDAT) im [E-PIX](https://www.ths-greifswald.de/e-pix). \r\n\r\nDabei werden eine oder mehrere Patienten-Identitäten im E-PIX erzeugt. Nach Abschluss des Record Linkage Prozesses werden für jede übermittelte Patienten-Resource der **Master Person Index (MPI ID)**, die MPI-Zuordnung (Person-Ressource) sowie der Match-Status und vorhandene Identitäten zurückgegeben.",
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
    "name" : "source",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Datenquelle",
    "type" : "string"
  },
  {
    "name" : "identity",
    "use" : "in",
    "min" : 1,
    "max" : "*",
    "documentation" : "Patient-Ressource (analog zu Patienten-Identität).",
    "type" : "Patient"
  },
  {
    "name" : "saveAction",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "type" : "Coding",
    "binding" : {
      "strength" : "required",
      "valueSet" : "https://ths-greifswald.de/fhir/ValueSet/epix/SaveAction"
    }
  },
  {
    "name" : "forceReferenceUpdate",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "matchResult",
    "use" : "out",
    "min" : 1,
    "max" : "*",
    "documentation" : "Match-Ergebnis zu einer übergebenen Patienten-Identität. Für jeden im Request übergebenen identity-Parameter wird genau ein matchResult zurück gegeben.",
    "part" : [{
      "name" : "sourceIdentity",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Die im Request übergebene, unveränderte Patienten-Ressource, auf die sich dieses Match-Ergebnis bezieht.",
      "type" : "Patient"
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
  }]
}

```
