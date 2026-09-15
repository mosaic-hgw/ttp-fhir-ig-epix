Instance: QueryPossibleMatches
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches"
* name = "QueryPossibleMatches"
* title = "queryPossibleMatches"
* status = #draft
* kind = #operation
* description = "Gibt possible Matches des E-PIX zurück. Begrenzung auf eine spezifische Domäne und/oder eine spezifische Person (MPI-Eintrag) ist möglich."
* affectsState = false
* code = #queryPossibleMatches
* comment = "Matchende Identitäts-Informationen sowie zugehörige Meta-Informationen ausgeben."
* system = true
* type = false
* instance = false
* parameter[0].name = #_offset
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Offset für Paging (Anzahl der zu überspringenden match-Parameter)"
* parameter[=].type = #integer
* parameter[+].name = #_count
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Anzahl der zurück zu gebenden match-Parameter (Paging)"
* parameter[=].type = #integer
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Matching-Domaene"
* parameter[=].type = #string
* parameter[+].name = #mpiIdentifier
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Identifikator eines MPI-Entrags (MPI-ID, Person.identifier)."
* parameter[=].type = #Identifier
* parameter[+].name = #match
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Ergebnis-Bundle mit Match-Informationen."
* parameter[=].type = #Bundle
* parameter[=].targetProfile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile"

Instance: Parameters-QueryPossibleMatches-request-example-1
InstanceOf: Parameters
Title: "Beispiel Request für Operation QueryPossibleMatches"
Description: "Parameters-Ressource für den Aufruf der Operation per HTTP-POST."
Usage: #example

* parameter[0].name = "_offset"
* parameter[=].valueInteger = 0

* parameter[+].name = "_count"
* parameter[=].valueInteger = 1

* parameter[+].name = "domain"
* parameter[=].valueString = "MIRACUM"

* parameter[+].name = "mpiIdentifier"
* parameter[=].valueIdentifier.system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
* parameter[=].valueIdentifier.value = "1001000000066"

Instance: Bundle-QueryPossibleMatches-response-example-1
InstanceOf: Bundle
Title: "Beispiel Bundle Response für Operation QueryPossibleMatches"
Description: "Suchergebnis-Bundle mit einer MatchParametersProfile-Instanz."
Usage: #example

* type = #searchset
* total = 45 // Gesamtzahl aller possible matches im E-PIX

// Paging Navigation Links
* link[0].relation = "self"
* link[=].url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=0&_count=1"

* link[+].relation = "next"
* link[=].url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=1&_count=1"

* link[+].relation = "previous"
* link[=].url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=0&_count=1"

* link[+].relation = "first"
* link[=].url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=0&_count=1"

* link[+].relation = "last"
* link[=].url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches?domain=MIRACUM&mpiIdentifier=123456789&_offset=44&_count=1"

* entry[0].fullUrl = "urn:uuid:a1b2c3d4-e5f6-7890-1234-56789abcdef0"
* entry[=].resource = MatchResultParameters01

// Einbettung des Ergebnisses gemäß MatchParametersProfile
Instance: MatchResultParameters01
InstanceOf: MatchParametersProfile
Usage: #inline

// Slice: matchItem (1. Patient)
* parameter[matchItem][0].name = "matchItem"
* parameter[matchItem][0].resource = MatchPatient01

// Slice: matchItem (2. Patient)
* parameter[matchItem][1].name = "matchItem"
* parameter[matchItem][1].resource = MatchPatient02

// Slice: matchScore
* parameter[matchScore].name = "matchScore"
* parameter[matchScore].valueDecimal = 0.92

// Slice: matchResult
* parameter[matchResult].name = "matchResult"
* parameter[matchResult].valueDecimal = 1.0

// Slice: linkId
* parameter[linkId].name = "linkId"
* parameter[linkId].valueInteger = 52


// Definition der beiden eingebetteten Patienten-Ressourcen:
Instance: MatchPatient01
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Stephan"
* gender = #male
* birthDate = "1985-04-12"

Instance: MatchPatient02
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Stephen"
* gender = #male
* birthDate = "1985-04-12"