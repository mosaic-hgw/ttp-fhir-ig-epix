Instance: AddPossibleMatchForIdentity
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPossibleMatchForIdentity"
* name = "AddPossibleMatchForIdentity"
* title = "addPossibleMatchForIdentity"
* status = #draft
* kind = #operation
* description = "Fügt einen Match zu einer Person anhand von IdentityIds einer Domäne hinzu."
* affectsState = true
* code = #addPossibleMatchForIdentity
* comment = "Fügt einen Match zu einer Person anhand von IdentityIds einer Domäne hinzu."
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
  * name = #identityReference
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Referenz auf eine Identität (Patient-Ressource)"
  * type = #Reference
* parameter[+]
  * name = #identityReferenceAlias
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Referenz auf ein Alias der Identität (Patient-Ressource)"
  * type = #Reference
* parameter[+].name = #match
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Ergebnis mit Match-Informationen vom Typ Match Parameters Profile."
* parameter[=].type = #Parameters

Instance: Parameters-AddPossibleMatchForIdentity-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "domain"
  * valueString = "MIRACUM"
* parameter[+]
  * name = "identityReference"
  * valueId = "53"
* parameter[+]
  * name = "identityReferenceAlias"
  * valueId = "67"

Instance: Parameters-AddPossibleMatchForIdentity-response-example-1
InstanceOf: MatchParametersProfile
Title: "Beispiel-Instanz für MatchParametersProfile AddPossibleMatchForIdentity"
Description: "Eine konkrete Instanz des MatchParametersProfile mit Beispielwerten."
Usage: #example

* meta.lastUpdated = "2026-09-15T16:31:23.000+02:00"
* meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile"

// Match Items
* parameter[matchItem][+].resource = Patient7
* parameter[matchItem][+].resource = Patient8

// Restliche Parameter
* parameter[matchProbability][+].valueDecimal = 5.362352
* parameter[matchCreated][+].valueDateTime = "2026-09-15T16:31:23.000+02:00"
* parameter[matchCreationType][+].valueCodeableConcept = MatchCreationTypeCS#MANUAL "MANUAL"
* parameter[matchPriority][+].valueCodeableConcept = MatchPriorityCS#OPEN "OPEN"
* parameter[matchLinkId][+].valueInteger = 52

// Inline Patients
Instance: Patient7
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Stephen"
* gender = #male
* birthDate = "1985-04-12"
* identifier.system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
* identifier.value = "1001000000066"

Instance: Patient8
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Steven"
* gender = #male
* birthDate = "1985-04-12"
* identifier.system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
* identifier.value = "1001000000031"