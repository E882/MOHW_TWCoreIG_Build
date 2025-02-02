Instance: medication-frequency-tw
InstanceOf: ConceptMap
Title: "臺灣衛福部統計處藥品使用頻率代碼對應對應HL7 TimingAbbreviation"
//Description :  "臺灣衛福部統計處藥品使用頻率代碼對應對應HL7 TimingAbbreviation，當代碼無法對應至國際標準碼時將以普遍被使用的臺灣衛福部統計處臺灣標準碼為主，概念對應出版日期：2024-01-16；資料所屬單位：衛生福利部。"
Usage: #definition
* experimental = false
* status = #active
* date = "2024-01-16"
* version = "0.2.1"
* name = "TWHealthProfessional"
* title = "臺灣衛福部統計處藥品使用頻率代碼對應對應HL7 TimingAbbreviation"
* description = "此對應表為臺灣衛福部統計處藥品使用頻率代碼對應至國際標準碼HL7 TimingAbbreviation，供實作者於撰寫程式以自動化對應或轉代碼時使用。"
* sourceUri = "https://twcore.mohw.gov.tw/ig/twcore/ValueSet/medication-frequency-tw"
* targetUri = "http://hl7.org/fhir/ValueSet/timing-abbreviation"
* group[0].source = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medication-frequency-tw"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation"
* group[=].element[0].code = #QW(x,y,z..)
* group[=].element[=].display = "每星期x,y,z…使用(x,y,z為一至六、日)"
* group[=].element[=].target.code = #WK
* group[=].element[=].target.display = "weekly"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #yWzD
* group[=].element[=].display = "每y星期用z天(y,z=1,2,3….)"
* group[=].element[=].target.code = #QOD
* group[=].element[=].target.display = "QOD"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #QxD
* group[=].element[=].display = "每x日一次(x=2,3,4,….)"
* group[=].element[=].target.code = #QD
* group[=].element[=].target.display = "QD"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #QxM
* group[=].element[=].display = "每x月一次(x,y=1,2,3,4,….)"
* group[=].element[=].target.code = #MO
* group[=].element[=].target.display = "monthly"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #QW
* group[=].element[=].display = "每週一次"
* group[=].element[=].target.code = #WK
* group[=].element[=].target.display = "weekly"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #BIW
* group[=].element[=].display = "每週二次"
* group[=].element[=].target.code = #WK
* group[=].element[=].target.display = "weekly"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TIW
* group[=].element[=].display = "每週三次"
* group[=].element[=].target.code = #WK
* group[=].element[=].target.display = "weekly"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #QD
* group[=].element[=].display = "每日一次"
* group[=].element[=].target.code = #QD
* group[=].element[=].target.display = "QD"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #QDAM
* group[=].element[=].display = "每日一次上午使用"
* group[=].element[=].target.code = #AM
* group[=].element[=].target.display = "AM"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #QDPM
* group[=].element[=].display = "每日一次下午使用"
* group[=].element[=].target.code = #PM
* group[=].element[=].target.display = "PM"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #QDHS
* group[=].element[=].display = "每日一次睡前使用"
* group[=].element[=].target.code = #BED
* group[=].element[=].target.display = "at bedtime"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #QN
* group[=].element[=].display = "每晚使用一次"
* group[=].element[=].target.code = #QD
* group[=].element[=].target.display = "QD"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #BID
* group[=].element[=].display = "每日二次"
* group[=].element[=].target.code = #BID
* group[=].element[=].target.display = "BID"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TID
* group[=].element[=].display = "每日三次"
* group[=].element[=].target.code = #TID
* group[=].element[=].target.display = "TID"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #QID
* group[=].element[=].display = "每日四次"
* group[=].element[=].target.code = #QID
* group[=].element[=].target.display = "QID"
* group[=].element[=].target.equivalence = #equal