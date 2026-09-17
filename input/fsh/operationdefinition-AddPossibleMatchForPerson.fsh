Instance: AddPossibleMatchForPerson
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPossibleMatchForPerson"
* name = "AddPossibleMatchForPerson"
* title = "addPossibleMatchForPerson"
* status = #draft
* kind = #operation
* description = "Fügt einen Match zu einer Person anhand von MPIs einer Domäne hinzu."
* affectsState = true
* code = #addPossibleMatchForPerson
* comment = "Fügt einen Match zu einer Person anhand von MPIs einer Domäne hinzu."
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #domain
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Angabe der Matching-Domaene"
  * type = #string
* parameter[+]
  * name = #mpiIdentifier
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Identifikator eines MPI-Eintrags (MPI-ID, Person.identifier)."
  * type = #Identifier
* parameter[+]
  * name = #mpiIdentifierAlias
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Aliasangabe bezogen auf Identifikator eines MPI-Eintrags (MPI-ID, Person.identifier)."
  * type = #Identifier
* parameter[+]
  * name = #match
  * use = #out
  * min = 0
  * max = "1"
  * documentation = "Ergebnis mit Match-Informationen vom Typ Match Parameters Profile."
  * type = #Parameters

Instance: Parameters-AddPossibleMatchForPerson-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "domain"
  * valueString = "MIRACUM"
* parameter[+]
  * name = "mpiIdentifier"
  * valueIdentifier
    * system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
    * value = "1001000000066"
* parameter[+]
  * name = "mpiIdentifierAlias"
  * valueIdentifier
    * system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
    * value = "1001000068944"

Instance: Parameters-AddPossibleMatchForPerson-response-example-1
InstanceOf: MatchParametersProfile
Title: "Beispiel-Instanz für MatchParametersProfile AddPossibleMatchForPerson"
Description: "Eine konkrete Instanz des MatchParametersProfile mit Beispielwerten."
Usage: #example

* meta.lastUpdated = "2026-09-15T16:31:23.000+02:00"
* meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile"

// Match Items
* parameter[matchItem][+].resource = Patient5
* parameter[matchItem][+].resource = Patient6

// Restliche Parameter
* parameter[matchProbability][+].valueDecimal = 5.362352
* parameter[matchCreated][+].valueDateTime = "2026-09-15T16:31:23.000+02:00"
* parameter[matchCreationType][+].valueCodeableConcept = MatchCreationTypeCS#MANUAL "MANUAL"
* parameter[matchPriority][+].valueCodeableConcept = MatchPriorityCS#OPEN "OPEN"
* parameter[matchLinkId][+].valueInteger = 52

// Inline Patients
Instance: Patient5
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Stephen"
* gender = #male
* birthDate = "1985-04-12"
* identifier.system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
* identifier.value = "1001000000066"

Instance: Patient6
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Steven"
* gender = #male
* birthDate = "1985-04-12"
* identifier.system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
* identifier.value = "1001000068944"