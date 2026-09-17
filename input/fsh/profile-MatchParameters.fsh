Profile: MatchParametersProfile
Parent: Parameters
Id: match-parameters-profile
Title: "Match Parameters Profile"
Description: "Match informationen zu zwei Identitäten inklusive der betroffenden Identitäten, Score, MatchResult und LinkId des Matches"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile"
* . ^short = "Match Informationen zu zwei Identitäten"
* . ^comment = "Match Informationen zu zwei Identitäten"
* meta MS
* meta.versionId MS
* meta.lastUpdated MS
* meta.source MS
* parameter 7..7
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter ^slicing.ordered = true

// Definition von Slice: matchItem
* parameter contains matchItem 2..2
* parameter[matchItem].name = "matchItem"
* parameter[matchItem].resource 1..1
* parameter[matchItem].resource only Patient

// Definition von Slice: matchProbability
* parameter contains matchProbability 1..1
* parameter[matchProbability].name = "matchProbability"
* parameter[matchProbability].value[x] 1..1
* parameter[matchProbability].value[x] only decimal

// Definition von Slice: matchCreated
* parameter contains matchCreated 1..1
* parameter[matchCreated].name = "matchCreated"
* parameter[matchCreated].value[x] 1..1
* parameter[matchCreated].value[x] only dateTime

// Definition von Slice: matchCreationType (auf CodeableConcept geändert)
* parameter contains matchCreationType 1..1
* parameter[matchCreationType].name = "matchCreationType"
* parameter[matchCreationType].value[x] 1..1
* parameter[matchCreationType].value[x] only CodeableConcept
* parameter[matchCreationType].valueCodeableConcept from MatchCreationTypeVS (required)

// Definition von Slice: matchPriority (auf CodeableConcept geändert)
* parameter contains matchPriority 1..1
* parameter[matchPriority].name = "matchPriority"
* parameter[matchPriority].value[x] 1..1
* parameter[matchPriority].value[x] only CodeableConcept
* parameter[matchPriority].valueCodeableConcept from MatchPriorityVS (required)

// Definition von Slice: linkId
* parameter contains linkId 1..1
* parameter[linkId].name = "linkId"
* parameter[linkId].value[x] 1..1
* parameter[linkId].value[x] only integer

Instance: Parameters-MatchParametersProfile-example-1
InstanceOf: MatchParametersProfile
Title: "Beispiel-Instanz für MatchParametersProfile"
Description: "Eine konkrete Instanz des MatchParametersProfile mit Beispielwerten."
Usage: #example
* meta.lastUpdated = "2026-09-15T16:31:23.000+02:00"
* meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/MatchParametersProfile"

// Erster Patient (matchItem 1)
* parameter[matchItem][0].resource = Patient3

// Zweiter Patient (matchItem 2)
* parameter[matchItem][1].resource = Patient4

// matchProbability
* parameter[matchProbability].valueDecimal = 6.952380935351054

// Match Created
* parameter[matchCreated].valueDateTime = "2026-09-15T16:31:23.000+02:00"

// Match Creation Type (jetzt als CodeableConcept)
* parameter[matchCreationType].valueCodeableConcept = MatchCreationTypeCS#AUTOMATIC "AUTOMATIC"

// Match Priority (jetzt als CodeableConcept)
* parameter[matchPriority].valueCodeableConcept = MatchPriorityCS#OPEN "OPEN"

// Link ID
* parameter[linkId].valueInteger = 52

// Definition der beiden Inline-Patientenressourcen:
Instance: Patient3
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Stephen"
* gender = #male
* birthDate = "1985-04-12"
* identifier.system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
* identifier.value = "1001000000066"

Instance: Patient4
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Steven"
* gender = #male
* birthDate = "1985-04-12"
* identifier.system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
* identifier.value = "1001000000013"