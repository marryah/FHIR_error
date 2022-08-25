Alias: $FHIRMaritalStatusVS = http://hl7.org/fhir/ValueSet/marital-status
Alias: $FHIRGenderVS = http://hl7.org/fhir/ValueSet/administrative-gender


Logical: ZIELPatient
Id: ZIELPatient
Title: "ZIELPatient"
Description: "ZIEL Patient as Logical Model"
Parent: Element
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-03-14T10:45:00+01:00"
* ^publisher = "Forschungsgruppe Informatik im Gesundheitswesen, HS Osnabrück, Osnabrück, Germany"
* ^contact.name = "Forschungsgruppe Informatik im Gesundheitswesen, HS Osnabrück, Osnabrück, Germany"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hs-osnabrueck.de/forschungsgruppe-informatik-im-gesundheitswesen/"
* name 1..1 HumanName "name of the patient" "name of the patient"
* dateOfBirth 1..1 date "date the patient was born" "date the patient was born"
* gender 1..1 CodeableConcept "gender of the patient" "gender of the patient"
* gender from $FHIRGenderVS (required)
* maritalStatus 0..1 CodeableConcept "marital status of the patient" "marital status of the patient"
* maritalStatus from $FHIRMaritalStatusVS (required)
* nameOfHealthInsurance 0..1 string "name of health insurance" "name of health insurance"
* otherInformation 0..1 string "other information as free text" "other information as free text"
