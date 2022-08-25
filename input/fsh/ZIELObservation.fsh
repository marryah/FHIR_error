Logical: ZIELObservation
Id: ZIELObservation
Title: "ZIELObservation"
Description: "ZIEL Observation as Logical Model"
Parent: Element
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-03-14T10:37:00+01:00"
* ^publisher = "Forschungsgruppe Informatik im Gesundheitswesen, HS Osnabrück, Osnabrück, Germany"
* ^contact.name = "Forschungsgruppe Informatik im Gesundheitswesen, HS Osnabrück, Osnabrück, Germany"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hs-osnabrueck.de/forschungsgruppe-informatik-im-gesundheitswesen/"
* patient 1..1 Reference(ZIELPatient) "patient this observation belongs to" "patient this patient belongs to"
* dateOfCreation 0..1 date "date when observation was created" "date when observation was created"
* code 1..1 CodeableConcept "code describing the content"
* resultBoolean 0..1 boolean "result as boolean" "result as boolean"
* resultCodeableConcept 0..1 CodeableConcept "result as CodeableConcept" "result as CodeableConcept"
* resultString 0..1 string "result as string" "result as string"
* resultQuantity 0..1 Quantity "result as Quantity" "result as Quantity"
* resultInteger 0..1 integer "result as Integer" "result as Integer"
* referencedObservation 0..1 Reference(ZIELObservation) "Reference this Observation relates to"
