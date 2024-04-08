Logical: TWPatientModel
Id: TWPatient
Title: "臺灣核心-病人(TW Core Patient)之資料模型"
Description: "臺灣核心-病人(TW Core Patient)之資料模型"
* ^version = "0.2.0"
* identifier 1..* Identifier "身份識別碼(病歷號、身分證字號、護照號碼、居留證號碼等)" "身份識別碼(病歷號、身分證字號、護照號碼、居留證號碼等)。"
* active 0..1 boolean "此基本資料是否使用中。" "此基本資料是否使用中。"
* name 0..* HumanName "姓名，包括病人身分證或護照上的姓名、新生兒報戶口（戶籍登記）前的暫時性姓名、或研究用之匿名化病人姓名等。" "姓名，包括病人身分證或護照上的姓名、新生兒報戶口（戶籍登記）前的暫時性姓名、或研究用之匿名化病人姓名等。"
* telecom 0..* ContactPoint "聯絡方式。" "聯絡方式。"
* gender 1..1 code "性別。" "性別。"
* birthDate 1..1 date "出生日期。" "出生日期。"
* address 0..* Address "地址(戶籍/現居/工作等)。" "地址(戶籍/現居/工作等)。"
* maritalStatus 0..1 CodeableConcept "婚姻狀態。" "婚姻狀態。"
* photo 0..* Attachment "病人的影像（照片）。" "病人的影像（照片）。"
* contact 0..* BackboneElement "緊急聯絡人。" "緊急聯絡人。"
* communicationLanguage 0..* CodeableConcept "溝通語言。" "溝通語言。"
* organization 0..1 Organization "此紀錄的保管機構。" "此紀錄的保管機構。"

Mapping: TWCore
Id: TWCore
Title: "TW Core IG"
Source: TWPatientModel
Target: "https://twcore.mohw.gov.tw/ig/twcore"
* -> "TWCorePatient"
//* text -> "text"
* identifier -> "identifier"
* active -> "active"
* name -> "name"
* telecom -> "telecom"
* gender -> "gender"
* birthDate -> "birthDate"
* address -> "address"
* maritalStatus -> "maritalStatus"
* photo -> "photo"
* contact -> "contact"
* communicationLanguage -> "communication.language"
* organization -> "managingOrganization.Reference(TW Core Organization)"