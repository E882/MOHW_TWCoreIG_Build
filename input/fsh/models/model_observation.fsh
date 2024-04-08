Logical: TWObservationModel
Id: TWObservation
Title: "臺灣核心-檢驗檢查(TW Core Observation) 之資料模型"
Description: "臺灣核心-檢驗檢查(TW Core Observation) 之資料模型"
* ^version = "0.2.0"
* resultStatus 1..1 code "檢驗檢查結果之狀態。" "檢驗檢查結果之狀態。"
* category 0..* CodeableConcept "檢驗檢查的類別。" "檢驗檢查的類別。"
* observationCode 1..1 CodeableConcept "檢驗檢查代碼，此代碼通常是用來識別所進行的檢驗檢查是哪一項，例如身高、體重、血壓等。" "檢驗檢查代碼，此代碼通常是用來識別所進行的檢驗檢查是哪一項，例如身高、體重、血壓等。"
* subject 1..1 Patient "檢驗檢查的對象。" "檢驗檢查的對象。"
* dateTime 1..1 dateTime "檢驗檢查的日期(時間)。" "檢驗檢查的日期(時間)。"
//* performer[x] 0..* Practitioner or Organization or Patient or PractitionerRole or CareTeam "負責檢驗檢查的人員。" "負責檢驗檢查的人員。"
* performer 0..* BackboneElement "負責檢驗檢查的人員。" "負責檢驗檢查的人員。"
* performer.practitioner 0..* Practitioner "負責檢驗檢查的某健康照護服務提供者。" "負責檢驗檢查的某健康照護服務提供者。"
* performer.organization 0..* Organization "負責檢驗檢查的某機構。" "負責檢驗檢查的某機構。"
* performer.patient 0..* Patient "負責檢驗檢查的某病人。" "負責檢驗檢查的某病人。"
* performer.practitionerRole 0..* PractitionerRole "負責檢驗檢查的某健康照護服務角色。" "負責檢驗檢查的某健康照護服務角色。"
* performer.careTeam 0..* CareTeam "負責檢驗檢查的某照護團隊。" "負責檢驗檢查的某照護團隊。"
* results 0..1 BackboneElement "檢驗檢查結果。" "檢驗檢查結果。"
* subResults 0..* BackboneElement "子項檢驗檢查之結果。" "子項檢驗檢查之結果。"

Mapping: TWObservation
Id: TWObservation
Title: "TW Core IG"
Source: TWObservationModel
Target: "https://twcore.mohw.gov.tw/ig/twcore"
* -> "TWCoreObservationLaboratoryResult 或 TWCoreObservationBloodPressure 或 TWCoreObservationBMI"
//* text -> "TWCoreObservationLaboratoryResult.text 或 TWCoreObservationBloodPressure.text 或 TWCoreObservationBMI.text"
* resultStatus -> "TWCoreObservationLaboratoryResult.status 或 TWCoreObservationBloodPressure.status 或 TWCoreObservationBMI.status"
* category -> "TWCoreObservationLaboratoryResult.category 或 TWCoreObservationBloodPressure.category 或 TWCoreObservationBMI.category"
* observationCode -> "TWCoreObservationLaboratoryResult.code 或 TWCoreObservationBloodPressure.code 或 TWCoreObservationBMI.code"
* subject -> "TWCoreObservationLaboratoryResult.subject.Reference(TW Core Patient) 或 TWCoreObservationBloodPressure.subject.Reference(TW Core Patient) 或 TWCoreObservationBMI.subject.Reference(TW Core Patient)"
* dateTime -> "TWCoreObservationLaboratoryResult.effectiveDateTime 或 TWCoreObservationBloodPressure.effectiveDateTime 或 TWCoreObservationBMI.effectiveDateTime"
//* performer[x] -> "TWCoreObservationLaboratoryResult.performer.Reference(TWCorePractitioner | TWCoreOrganization | TWCorePatient | PractitionerRole | CareTeam) 或 TWCoreObservationBloodPressure.performer.Reference(TWCorePractitioner | TWCoreOrganization | TWCorePatient | PractitionerRole | CareTeam) 或 TWCoreObservationBMI.performer.Reference(TWCorePractitioner | TWCoreOrganization | TWCorePatient | PractitionerRole | CareTeam)"
* performer.practitioner -> "TWCoreObservationLaboratoryResult.performer.Reference(TW Core Practitioner)"
* performer.organization -> "TWCoreObservationLaboratoryResult.performer.Reference(TW Core Organization)"
* performer.patient -> "TWCoreObservationLaboratoryResult.performer.Reference(TW Core Patient)"
* performer.practitionerRole -> "TWCoreObservationLaboratoryResult.performer.Reference(TW Core PractitionerRole)"
* performer.careTeam -> "TWCoreObservationLaboratoryResult.performer.Reference(CareTeam)"
* results -> "TWCoreObservationLaboratoryResult.value[x] 或 TWCoreObservationBMI.value[x]"
* subResults -> "TWCoreObservationBloodPressure.valueQuantity"