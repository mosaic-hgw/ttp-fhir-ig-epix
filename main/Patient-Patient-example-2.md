# Patient-example-2 - v2025.2.0

 ![](assets/images/Design-Logo-THS-deutsch-271-padding.png) 

 
 2025.2.0 - ci-build  

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient-example-2**

## Example Patient: Patient-example-2

Last updated: 2021-05-19 17:50:23+0200

Profile: [Patient](StructureDefinition-Patient.md)

Manfred Mustermann Male, DoB: 1953-12-11 ( https://ths-greifswald.de/fhir/epix/identifier/SystemXY#ABC_12345)

-------

| | |
| :--- | :--- |
| Contact Detail | * [manfred.mustermann@example.org](mailto:manfred.mustermann@example.org)
* ph: 012345/5555567
* Musterweg 22 Musterstadt 12345 
 |
| Patient Nationality: | * code: Germany
 |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) | Musterhausen |
| Custom IDAT Values: | * value1: A38
* value2: true
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Patient-example-2",
  "meta" : {
    "lastUpdated" : "2021-05-19T17:50:23.000+02:00",
    "profile" : ["https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "city" : "Musterhausen"
    }
  },
  {
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "DE"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
  },
  {
    "extension" : [{
      "url" : "value1",
      "valueString" : "A38"
    },
    {
      "url" : "value2",
      "valueBoolean" : true
    }],
    "url" : "https://ths-greifswald.de/fhir/StructureDefinition/epix/CustomIdatValues"
  }],
  "identifier" : [{
    "system" : "https://ths-greifswald.de/fhir/epix/identifier/SystemXY",
    "value" : "ABC_12345"
  }],
  "name" : [{
    "family" : "Mustermann",
    "given" : ["Manfred"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "manfred.mustermann@example.org"
  },
  {
    "system" : "phone",
    "value" : "012345/5555567"
  }],
  "gender" : "male",
  "birthDate" : "1953-12-11",
  "address" : [{
    "line" : ["Musterweg 22"],
    "city" : "Musterstadt",
    "postalCode" : "12345"
  }]
}

```
