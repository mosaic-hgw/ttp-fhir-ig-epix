# Artifacts Summary - v2026.1.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2026.1.0 - ci-build  

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [addPatient](OperationDefinition-AddPatient.md) | Fügt eine oder mehrere Patientenidentitäten hinzu. |
| [addPossibleMatch](OperationDefinition-AddPossibleMatch.md) | Fügt einen Match zu einem bestimmten MPI-Eintrag einer Domäne hinzu. |
| [assignIdentity](OperationDefinition-AssignIdentity.md) | Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person, um eine erkannte Dublette (Match Result) zu beheben. |
| [assignIdentityByIdentifier](OperationDefinition-AssignIdentityByIdentifier.md) | Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person. Selektionsparameter ist ein Identifier der Identität. |
| [queryPossibleMatches](OperationDefinition-QueryPossibleMatches.md) | Gibt Matches zu einer Domäne oder zu einem bestimmten MPI-Eintrag aus. |
| [removePossibleMatches](OperationDefinition-RemovePossibleMatches.md) | Entfernt Matches aus einer Domäne. |
| [setReferenceIdentity](OperationDefinition-SetReferenceIdentity.md) | Ändert die Referenz-Identität einer vorhandenen Person (MPI-Eintrag), d.h. diejenigen Daten einer Person, die primäre Gültigkeit haben sollen. |
| [updatePatient](OperationDefinition-UpdatePatient.md) | Aktualisiert Patienten-Identitäten eines MPI-Eintrags. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Patient](StructureDefinition-Patient.md) | Patienten-Identität (Variante/Schreibweise) einer realen Person (vgl. auch MPI Eintrag, Person-Profil). |
| [Person](StructureDefinition-Person.md) | Allgemeines Personen-Profil. Repräsentiert die reale Person (MPI Eintrag), mit beliebig vielen Varianten/Schreibweisen. Letztere werden als Patienten-Identitäten abgebildet (=> Patient-Profil). Die Referenz-Identität wird als aktuell korrekte Variante festgelegt und durch die Angabe von link.assurance='level4' repräsentiert. Es existiert immer genau 1 Link mit diesem Assurance-Level. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Custom IDAT Values](StructureDefinition-CustomIdatValues.md) | Set von bis zu zehn individualisierbaren Werten zur Dokumentation von personenidentifizierenden Daten im E-PIX |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [AssignIdentityByIdentifier-example1](OperationOutcome-AssignIdentityByIdentifier-example1.md) |
| [OperationOutcome-AssignIdentity-response-example-1](OperationOutcome-OperationOutcome-AssignIdentity-response-example-1.md) |
| [OperationOutcome-RemovePossibleMatches-response-example-1](OperationOutcome-OperationOutcome-RemovePossibleMatches-response-example-1.md) |
| [Parameters-AddPatient-request-example-1](Parameters-Parameters-AddPatient-request-example-1.md) |
| [Parameters-AddPatient-response-example-1](Parameters-Parameters-AddPatient-response-example-1.md) |
| [Parameters-AddPossibleMatch-request-example-1](Parameters-Parameters-AddPossibleMatch-request-example-1.md) |
| [Parameters-AddPossibleMatch-response-example-1](Parameters-Parameters-AddPossibleMatch-response-example-1.md) |
| [Parameters-AssignIdentity-request-example-1](Parameters-Parameters-AssignIdentity-request-example-1.md) |
| [Parameters-AssignIdentityByIdentifier-request-example-1](Parameters-Parameters-AssignIdentityByIdentifier-request-example-1.md) |
| [Parameters-QueryPossibleMatches-request-example-1](Parameters-Parameters-QueryPossibleMatches-request-example-1.md) |
| [Parameters-QueryPossibleMatches-response-example-1](Parameters-Parameters-QueryPossibleMatches-response-example-1.md) |
| [Parameters-RemovePossibleMatches-request-example-1](Parameters-Parameters-RemovePossibleMatches-request-example-1.md) |
| [Parameters-SetReferenceIdentity-request-example-1](Parameters-Parameters-SetReferenceIdentity-request-example-1.md) |
| [Parameters-SetReferenceIdentity-response-example-1](Parameters-Parameters-SetReferenceIdentity-response-example-1.md) |
| [Parameters-UpdatePatient-request-example-1](Parameters-Parameters-UpdatePatient-request-example-1.md) |
| [Parameters-UpdatePatient-response-example-1](Parameters-Parameters-UpdatePatient-response-example-1.md) |
| [Patient-example-1](Patient-Patient-example-1.md) |
| [Patient-example-2](Patient-Patient-example-2.md) |
| [Person-example-1](Person-Person-example-1.md) |

