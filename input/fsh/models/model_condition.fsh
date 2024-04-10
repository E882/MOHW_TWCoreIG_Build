Logical: TWConditionModel
Id: TWCondition
Title: "臺灣核心-病情、問題或診斷(TW Core Condition) 之資料模型"
Description: "臺灣核心-病情、問題或診斷(TW Core Condition) 之資料模型"
* ^version = "0.2.2"
//* text 0..1 Narrative "內容摘要以供人閱讀" "內容摘要以供人閱讀"
* clinicalStatus 1..1 CodeableConcept "病情、問題或診斷的臨床狀態。" "病情、問題或診斷的臨床狀態。"
* verificationStatus 0..1 CodeableConcept "病情、問題或診斷的臨床狀態的驗證狀態。" "病情、問題或診斷的臨床狀態的驗證狀態。"
* category 1..1 CodeableConcept "病情、問題或診斷的類別。" "病情、問題或診斷的類別。"
* severity 0..1 CodeableConcept "病情、問題或診斷的主觀嚴重程度。" "病情、問題或診斷的主觀嚴重程度。"
* code 1..1 CodeableConcept "病情、問題或診斷的識別。" "病情、問題或診斷的識別。"
* bodySite 0..* CodeableConcept "解剖位置。" "解剖位置。"
* subject 0..1 Patient "有此病情、問題或診斷的病人。" "有此病情、問題或診斷的病人。"
* onset 0..1 dateTime "估計的或實際的日期。" "估計的或實際的日期。"
* abatement 0..1 dateTime "何時解決/緩解。" "何時解決/緩解。"
//* asserter[x] 0..1 Practitioner or PractitionerRole or Patient or RelatedPerson "聲稱有此病情、問題或診斷的人。" "聲稱有此病情、問題或診斷的人。"
* asserter 0..1 BackboneElement "聲稱有此病情、問題或診斷的人。" "聲稱有此病情、問題或診斷的人。"
* asserter.practitioner 0..1 Practitioner "聲稱有此病情、問題或診斷的某健康照護服務提供者。" "聲稱有此病情、問題或診斷的某健康照護服務提供者。"
* asserter.practitionerRole 0..1 PractitionerRole "聲稱有此病情、問題或診斷的某健康照護服務角色。" "聲稱有此病情、問題或診斷的某健康照護服務角色。"
* asserter.patient 0..1 Patient "聲稱有此病情、問題或診斷的某病人。" "聲稱有此病情、問題或診斷的某病人。"
* asserter.relatedPerson 0..1 RelatedPerson "聲稱有此病情、問題或診斷的某相關人員。" "聲稱有此病情、問題或診斷的某相關人員。"

Mapping: TWCondition
Id: TWCondition
Title: "TW Core IG"
Source: TWConditionModel
Target: "https://twcore.mohw.gov.tw/ig/twcore"
* -> "TWCoreCondition"
//* text -> "TWCoreCondition.text"
* clinicalStatus -> "TWCoreCondition.clinicalStatus"
* verificationStatus -> "TWCoreCondition.verificationStatus"
* category -> "TWCoreCondition.category"
* severity -> "TWCoreCondition.severity"
* code -> "TWCoreCondition.code"
* bodySite -> "TWCoreCondition.bodySite"
* subject -> "TWCoreCondition.subject.Reference(TW Core Patient | Group)"
* onset -> "TWCoreCondition.onsetDateTime"
//* abatement -> "TWCoreCondition.abatementDateTime"
* abatement -> "TWCoreCondition.abatement.as(dateTime)"
//* asserter[x] -> "TWCoreCondition.asserter.Reference(TW Core Practitioner | PractitionerRole | TW Core Patient | RelatedPerson)"
* asserter.practitioner -> "TWCoreCondition.asserter.Reference(TW Core Practitioner)"
* asserter.practitionerRole -> "TWCoreCondition.asserter.Reference(TW Core PractitionerRole)"
* asserter.patient -> "TWCoreCondition.asserter.Reference(TW Core Patient)"
* asserter.relatedPerson -> "TWCoreCondition.asserter.Reference(RelatedPerson)"