Alias: $snomedct = http://snomed.org/sct
Alias: $loinc = http://loinc.org

Profile: MyComposition
Parent: Composition
Title: "MyComposition"
Description: "MyComposition"
Id: MyComposition
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #closed
* section ^slicing.description = "the different sections"
* section ^slicing.ordered = true
* section contains
    patientenAdressbuch 0..1 MS and
    pflegegrad 1..1 MS and
    gradDerBehinderung 0..1 MS and
    pflegeDurchAngehoerige 0..1 MS and
    benachrichtigungVonAn-undZugehoerigen 0..1 MS and
    mitgabeKrankenkassenkarte 0..1 MS and
    zuzahlungsbefreiung 0..1 MS and
    krankenhausaufenthalt 0..* MS and
    persoenlicheErklaerungenGesetzlicheBetreuung 0..1 MS and
    relevanteInformationsquellen 0..1 MS and
    kommentar 0..1 MS and
    mitgegebeneDokumenteArzneimittelHilfsmittelGegenstaende 0..1 MS

// Organisational and Social issues
// RuleSet 1 - Working for Non-SNOMED Codes, error in line 35

* insert NotWorking(patientenAdressbuch,                                     "Patienten-Adressbuch",                                             Sectioncodes, Kontakt_und_behandelnde_Personen,                                       "Kontakt- und behandelnde Personen",                                                                                                                                                                                              "1.0.0",                                                      0, *, CareTeam or PractitionerRole or RelatedPerson )
* insert NotWorking(pflegegrad,                                              "Pflegegrad",                                                       Sectioncodes, SectionPflegegrad,                                                      "Bereich Pflegegrad",                                                                                                                                                                                                             "1.0.0",                                                      1, 2, Observation )
* insert NotWorking(mitgabeKrankenkassenkarte,                               "Mitgabe der Krankenkassenkarte",                                   Sectioncodes, krankenkassenkarte_mitgegeben,                                          "Krankenkassenkarte mitgegeben",                                                                                                                                                                                                  "1.0.0",                                                      0, 1, Observation )
* insert NotWorking(relevanteInformationsquellen,                            "Relevante Informationsquellen",                                    $loinc,       48766-0,                                                                "Information source",                                                                                                                                                                                                             "2.72",                                                       0, *, Provenance )
* insert NotWorking(gradDerBehinderung,                                      "Grad der Behinderung",                                             $snomedct,    363787002:704326004=21134002,                                           "Observable entity (observable entity\) : Precondition (attribute\) = Disability (finding\)",                                                                                                                                     "http://snomed.info/sct/900000000000207008/version/20220331", 1, 1, Observation )
* insert NotWorking(pflegeDurchAngehoerige,                                  "Pflege durch Angehörige",                                          $snomedct,    405204003,                                                              "Family involvement behavior : health care (observable entity\)",                                                                                                                                                                 "http://snomed.info/sct/900000000000207008/version/20220331", 1, 1, Observation )
* insert NotWorking(zuzahlungsbefreiung,                                     "Zuzahlungsbefreiung",                                              $snomedct,    363787002:704326004=308315007,                                          "Observable entity (observable entity\) : Precondition (attribute\) = Prescription payment exemption status (finding\)",                                                                                                          "http://snomed.info/sct/900000000000207008/version/20220331", 0, 1, Observation )
* insert NotWorking(krankenhausaufenthalt,                                   "Krankenhausaufenthalt",                                            $snomedct,    170551006,                                                              "Last hospital inpatient (finding\)",                                                                                                                                                                                             "http://snomed.info/sct/900000000000207008/version/20220331", 0, *, Encounter )
* insert NotWorking(persoenlicheErklaerungenGesetzlicheBetreuung,            "Persönliche Erklärungen / Gesetzliche Betreuung",                  $snomedct,    224329005,                                                              "Legal affairs and legal constraints (observable entity\)",                                                                                                                                                                       "http://snomed.info/sct/900000000000207008/version/20220331", 0, 2, Observation )
* insert NotWorking(kommentar,                                               "Freitext Kommentar",                                               $snomedct,    703852005,                                                              "Narrative comment section (record artifact\)",                                                                                                                                                                                   "http://snomed.info/sct/900000000000207008/version/20220331", 0, 1, Observation )
* insert NotWorking(mitgegebeneDokumenteArzneimittelHilfsmittelGegenstaende, "Mitgegebene Dokumente / Arzneimittel / Hilfsmittel / Gegenstände", $snomedct,    363787002:704326004=(404684003:47429007=49062001\,363713009=52101004\), "Observable entity (observable entity\) : Precondition (attribute\) = (Clinical finding (finding\): Associated with (attribute\) = Device (physical object\) \, Has interpretation (attribute\) = Present (qualifier value\) \)", "http://snomed.info/sct/900000000000207008/version/20220331", 0, *, Device or Medication or Provenance )


// RuleSet 2 - Working for SNOMED Codes, but no display for the code is given
* insert Working(benachrichtigungVonAn-undZugehoerigen,                     "Benachrichtigung von An- und Zugehörigen",                         $snomedct,                              302160007:704321009=(185087000:370131001=35359004\),                   "http://snomed.info/sct/900000000000207008/version/20220331",1, 1, Observation )        // "Household, family and support network detail (observable entity) : Characterizes (attribute) = ( Notifications (procedure) : Recipient category (attribute) = Family (social concept) )",

// RuleSet 3 - Testing - Not Working for SNOMED Codes either
/*
* insert Testing(patientenAdressbuch,                                     "Patienten-Adressbuch",                                             Sectioncodes,  Kontakt_und_behandelnde_Personen,                                       "Kontakt- und behandelnde Personen",                                                                                                                                                                                              "1.0.0",                                                      0, *, CareTeam or PractitionerRole or RelatedPerson )
* insert Testing(pflegegrad,                                              "Pflegegrad",                                                       Sectioncodes,  SectionPflegegrad,                                                      "Bereich Pflegegrad",                                                                                                                                                                                                             "1.0.0",                                                      1, 2, Observation )
* insert Testing(mitgabeKrankenkassenkarte,                               "Mitgabe der Krankenkassenkarte",                                   Sectioncodes,  krankenkassenkarte_mitgegeben,                                          "Krankenkassenkarte mitgegeben",                                                                                                                                                                                                  "1.0.0",                                                      0, 1, Observation )
* insert Testing(relevanteInformationsquellen,                            "Relevante Informationsquellen",                                    $loinc,        48766-0,                                                                "Information source",                                                                                                                                                                                                             "2.72",                                                       0, *, Provenance )
* insert Testing(gradDerBehinderung,                                      "Grad der Behinderung",                                             $snomedct,     363787002:704326004=21134002,                                           "Observable entity (observable entity\) : Precondition (attribute\) = Disability (finding\)",                                                                                                                                     "http://snomed.info/sct/900000000000207008/version/20220331", 1, 1, Observation )
* insert Testing(pflegeDurchAngehoerige,                                  "Pflege durch Angehörige",                                          $snomedct,     405204003,                                                              "Family involvement behavior : health care (observable entity\)",                                                                                                                                                                 "http://snomed.info/sct/900000000000207008/version/20220331", 1, 1, Observation )
* insert Testing(zuzahlungsbefreiung,                                     "Zuzahlungsbefreiung",                                              $snomedct,     363787002:704326004=308315007,                                          "Observable entity (observable entity\) : Precondition (attribute\) = Prescription payment exemption status (finding\)",                                                                                                          "http://snomed.info/sct/900000000000207008/version/20220331", 0, 1, Observation )
* insert Testing(krankenhausaufenthalt,                                   "Krankenhausaufenthalt",                                            $snomedct,     170551006,                                                              "Last hospital inpatient (finding\)",                                                                                                                                                                                             "http://snomed.info/sct/900000000000207008/version/20220331", 0, *, Encounter )
* insert Testing(persoenlicheErklaerungenGesetzlicheBetreuung,            "Persönliche Erklärungen / Gesetzliche Betreuung",                  $snomedct,     224329005,                                                              "Legal affairs and legal constraints (observable entity\)",                                                                                                                                                                       "http://snomed.info/sct/900000000000207008/version/20220331", 0, 2, Observation )
* insert Testing(kommentar,                                               "Freitext Kommentar",                                               $snomedct,     703852005,                                                              "Narrative comment section (record artifact\)",                                                                                                                                                                                   "http://snomed.info/sct/900000000000207008/version/20220331", 0, 1, Observation )
* insert Testing(mitgegebeneDokumenteArzneimittelHilfsmittelGegenstaende, "Mitgegebene Dokumente / Arzneimittel / Hilfsmittel / Gegenstände", $snomedct,     363787002:704326004=(404684003:47429007=49062001\,363713009=52101004\), "Observable entity (observable entity\) : Precondition (attribute\) = (Clinical finding (finding\): Associated with (attribute\) = Device (physical object\) \, Has interpretation (attribute\) = Present (qualifier value\) \)", "http://snomed.info/sct/900000000000207008/version/20220331", 0, *, Device or Medication or Provenance )
*/

RuleSet: NotWorking(slicename, title, system, code, codeText, codePattern, entryMin, entryMax, entryProfiles)
* section[{slicename}].title 1.. MS
* section[{slicename}].title = {title}
* section[{slicename}].code 1.. MS
* section[{slicename}].code.coding 1..1 MS
* section[{slicename}].code.coding = {system}#{code} {codeText}
* section[{slicename}].code.coding ^patternCoding.version = {codePattern}
* section[{slicename}].code.coding.system 1..
* section[{slicename}].code.coding.version 1..
* section[{slicename}].code.coding.code 1..
* section[{slicename}].code.coding.display 1..
* section[{slicename}].code.coding.userSelected ..0
* section[{slicename}].code.text ..0
* section[{slicename}].author ..0
* section[{slicename}].focus ..0
* section[{slicename}].text ..0
* section[{slicename}].mode ..0
* section[{slicename}].orderedBy ..0
* section[{slicename}].entry {entryMin}..{entryMax} MS
* section[{slicename}].entry only Reference({entryProfiles})
* section[{slicename}].entry.reference 1.. MS
* section[{slicename}].entry.type ..0
* section[{slicename}].entry.identifier ..0
* section[{slicename}].entry.display ..0
* section[{slicename}].emptyReason ..0
* section[{slicename}].section ..0

// Difference to NotWorking: The CodeText is not present
RuleSet: Working(slicename, title, system, code, codePattern, entryMin, entryMax, entryProfiles)
* section[{slicename}].title 1.. MS
* section[{slicename}].title = {title}
* section[{slicename}].code 1.. MS
* section[{slicename}].code.coding 1..1 MS
* section[{slicename}].code.coding = {system}#{code}
* section[{slicename}].code.coding ^patternCoding.version = {codePattern}
* section[{slicename}].code.coding.system 1..
* section[{slicename}].code.coding.version 1..
* section[{slicename}].code.coding.code 1..
* section[{slicename}].code.coding.display 1..
* section[{slicename}].code.coding.userSelected ..0
* section[{slicename}].code.text ..0
* section[{slicename}].author ..0
* section[{slicename}].focus ..0
* section[{slicename}].text ..0
* section[{slicename}].mode ..0
* section[{slicename}].orderedBy ..0
* section[{slicename}].entry {entryMin}..{entryMax} MS
* section[{slicename}].entry only Reference({entryProfiles})
* section[{slicename}].entry.reference 1.. MS
* section[{slicename}].entry.type ..0
* section[{slicename}].entry.identifier ..0
* section[{slicename}].entry.display ..0
* section[{slicename}].emptyReason ..0
* section[{slicename}].section ..0

// Difference to NotWorking: The codeText is set in a statement of its own
RuleSet: Testing(slicename, title, system, code, codeText, codePattern, entryMin, entryMax, entryProfiles)
* section[{slicename}].title 1.. MS
* section[{slicename}].title = {title}
* section[{slicename}].code 1.. MS
* section[{slicename}].code.coding 1..1 MS
* section[{slicename}].code.coding = {system}#{code}
* section[{slicename}].code.coding.display = {codeText}
* section[{slicename}].code.coding ^patternCoding.version = {codePattern}
* section[{slicename}].code.coding.system 1..
* section[{slicename}].code.coding.version 1..
* section[{slicename}].code.coding.code 1..
* section[{slicename}].code.coding.display 1..
* section[{slicename}].code.coding.userSelected ..0
* section[{slicename}].code.text ..0
* section[{slicename}].author ..0
* section[{slicename}].focus ..0
* section[{slicename}].text ..0
* section[{slicename}].mode ..0
* section[{slicename}].orderedBy ..0
* section[{slicename}].entry {entryMin}..{entryMax} MS
* section[{slicename}].entry only Reference({entryProfiles})
* section[{slicename}].entry.reference 1.. MS
* section[{slicename}].entry.type ..0
* section[{slicename}].entry.identifier ..0
* section[{slicename}].entry.display ..0
* section[{slicename}].emptyReason ..0
* section[{slicename}].section ..0

CodeSystem: Sectioncodes
Id: Sectioncodes
Title: "Sectioncodes"
Description: "Sectioncodes"
* #Kontakt_und_behandelnde_Personen "Contact or treating Person"
* #SectionPflegegrad "Section about Care Level"
* #krankenkassenkarte_mitgegeben "insurance card handed over"