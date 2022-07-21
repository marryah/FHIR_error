Alias: $SNOMEDCT = http://snomed.info/sct

Instance: ConfoundingConditionMappingToSNOMED
InstanceOf: ConceptMap
Usage: #example
Title: "Mapping from ConfoundingCondition to SNOMED CT"
Description: "ConfoundingConditionMapping: proprietary CodeSystem to SNOMED CT"
* version = "0.1.0"
* name = "ConfoundingConditionMapping"
* status = #draft
* date = "2022-04-13"
* sourceCanonical = Canonical(ZIELConfoundingConditionVS)
* targetCanonical = $SNOMEDCT
* group.element[+].code = #S06
* group.element[=].display = "Mangelernährung"
* group.element[=].target.code = #2492009
* group.element[=].target.display = "Nutritional disorder (disorder)"
* group.element[=].target.equivalence = #wider
* group.element[+].code = #R
* group.element[=].display = "Rheumatologische und immunologische Erkrankung"
* group.element[=].target.code = #396332003
* group.element[=].target.display = "Rheumatism (disorder)"
* group.element[=].target.equivalence = #narrower

