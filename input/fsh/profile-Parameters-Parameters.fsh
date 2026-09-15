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
* parameter 5..5
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter ^slicing.ordered = true

// Definition von Slice: matchItem
* parameter contains matchItem 2..2
* parameter[matchItem].name = "matchItem"
* parameter[matchItem].resource 1..1
* parameter[matchItem].resource only Patient

// Definition von Slice: matchScore
* parameter contains matchScore 1..1
* parameter[matchScore].name = "matchScore"
* parameter[matchScore].value[x] 1..1
* parameter[matchScore].value[x] only decimal

// Definition von Slice: matchResult
* parameter contains matchResult 1..1
* parameter[matchResult].name = "matchResult"
* parameter[matchResult].value[x] 1..1
* parameter[matchResult].value[x] only decimal

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
* meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Parameters"

// Erster Patient (matchItem 1)
* parameter[matchItem][0].name = "matchItem"
* parameter[matchItem][0].resource = Patient1

// Zweiter Patient (matchItem 2)
* parameter[matchItem][1].name = "matchItem"
* parameter[matchItem][1].resource = Patient2

// Match Score
* parameter[matchScore].name = "matchScore"
* parameter[matchScore].valueDecimal = 0.85

// Match Result
* parameter[matchResult].name = "matchResult"
* parameter[matchResult].valueDecimal = 1.0

// Link ID
* parameter[linkId].name = "linkId"
* parameter[linkId].valueInteger = 52

// Definition der beiden Inline-Patientenressourcen:
Instance: Patient1
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Stephan"
* gender = #male
* birthDate = "1985-04-12"

Instance: Patient2
InstanceOf: Patient
Usage: #inline
* name.family = "Strange"
* name.given = "Stephen"
* gender = #male
* birthDate = "1985-04-12"