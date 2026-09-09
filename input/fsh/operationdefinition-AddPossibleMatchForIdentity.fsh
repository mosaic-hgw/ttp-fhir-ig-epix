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
* parameter[+]
  * name = #match
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Match-Informationen zu zwei Identitäten."
  * part[+]
    * name = #item
    * use = #out
    * min = 2
    * max = "2"
    * documentation = "Die beiden matchenden Personen wie im Request übergeben."
    * type = #Patient
  * part[+]
    * name = #score
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Matching-Score"
    * type = #decimal
  * part[+]
    * name = #result
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Matching-Ergebnis"
    * type = #decimal
  * part[+]
    * name = #linkId
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Link-ID des Matches"
    * type = #integer
  * part[+]
    * name = #comment
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Anmerkung zum Match"
    * type = #string


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
InstanceOf: Parameters
Usage: #example
* parameter.name = "match"
* parameter.part[0].name = "item"
* parameter.part[=].resource.resourceType = "Patient"
* parameter.part[=].resource.id = "53"
* parameter.part[=].resource.meta.versionId = "1"
* parameter.part[=].resource.meta.lastUpdated = "2021-06-17T08:28:03.200+02:00"
* parameter.part[=].resource.meta.source = "dummy_safe_source"
* parameter.part[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter.part[=].resource.active = true
* parameter.part[=].resource.name.family = "xxxxx"
* parameter.part[=].resource.name.given = "Stefanie"
* parameter.part[=].resource.gender = #male
* parameter.part[=].resource.birthDate = "1962-12-17"
* parameter.part[+].name = "item"
* parameter.part[=].resource.resourceType = "Patient"
* parameter.part[=].resource.id = "67"
* parameter.part[=].resource.meta.versionId = "1"
* parameter.part[=].resource.meta.lastUpdated = "2021-06-17T08:28:24.180+02:00"
* parameter.part[=].resource.meta.source = "dummy_safe_source"
* parameter.part[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter.part[=].resource.active = true
* parameter.part[=].resource.name.family = "xxxxx"
* parameter.part[=].resource.name.given = "Stefanie"
* parameter.part[=].resource.gender = #male
* parameter.part[=].resource.birthDate = "1962-12-16"
* parameter.part[+].name = "score"
* parameter.part[=].valueDecimal = 0.965
* parameter.part[+].name = "result"
* parameter.part[=].valueDecimal = 0.952
* parameter.part[+].name = "linkId"
* parameter.part[=].valueInteger = 5654986
* parameter.part[+].name = "comment"
* parameter.part[=].valueString = "This match was added externally or manually."
