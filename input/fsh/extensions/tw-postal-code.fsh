Extension: TWPostalCode
Id: tw-postal-code
Title: "TW Postal code"
Description: "臺灣郵遞區號"
* ^url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-postal-code"
* ^version = "0.2.0"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Address.postalCode"
* value[x] only CodeableConceptTW
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.ordered = false
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains PostalCode3 0..1 MS and PostalCode5 0..1 MS and PostalCode6 0..1 MS
* valueCodeableConcept.coding[PostalCode3] from TWPostalCode3
* valueCodeableConcept.coding[PostalCode3].code MS
* valueCodeableConcept.coding[PostalCode3].system MS
* valueCodeableConcept.coding[PostalCode3].display MS
* valueCodeableConcept.coding[PostalCode3].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code3-tw"
* valueCodeableConcept.coding[PostalCode5] from TWPostalCode5
* valueCodeableConcept.coding[PostalCode5].code MS
* valueCodeableConcept.coding[PostalCode5].system MS
* valueCodeableConcept.coding[PostalCode5].display MS
* valueCodeableConcept.coding[PostalCode5].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code5-tw"
* valueCodeableConcept.coding[PostalCode6] from TWPostalCode6
* valueCodeableConcept.coding[PostalCode6].code MS
* valueCodeableConcept.coding[PostalCode6].system MS
* valueCodeableConcept.coding[PostalCode6].display MS
* valueCodeableConcept.coding[PostalCode6].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code6-tw"

* . ^short = "臺灣郵遞區號"
* id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* url ^short = "擴充的資料項目名稱"
* url ^definition = "擴充的資料項目之定義連結—一個邏輯名稱或URL"
* url ^comment = "此定義可直接指向可計算的或人類可讀的擴充資料項目的定義，也可以是其他規範中聲明的邏輯URI。此定義**必須（SHALL）** 定義擴充的結構定義的URI。"
* value[x] ^short = "擴充的資料項目的內容值"
* value[x] ^definition = "擴充的資料項目的內容值—必須是一組受限制的data type中的一個（清單請見[Extensibility](http://hl7.org/fhir/2021Mar/extensibility.html)）"
* value[x] ^comment = "並非所有的專門術語使用都符合這個一般模式。在某些情況下，資料模型不應該使用CodeableConcept，而應直接使用Coding，並提供他們自己的結構來管理文字、編碼、翻譯、資料項目之間的關係、先組合配對（pre-）和後組合配對（post-coordination）。"
* valueCodeableConcept ^short = "擴充的資料項目的內容值"
* valueCodeableConcept ^definition = "擴充的資料項目的內容值—必須是一組受限制的data type中的一個（清單請見[Extensibility](http://hl7.org/fhir/2021Mar/extensibility.html)）"
* valueCodeableConcept.id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* valueCodeableConcept.id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* valueCodeableConcept.extension ^short = "擴充的資料項目"
* valueCodeableConcept.extension ^definition = "可用於表示不屬於此資料項目基本定義的附加資訊。為了擴充的使用安全和可管理，對擴充的定義和使用有一套嚴格的管理。儘管任何實作者都可以定義一個擴充，但作為擴充定義的一部分，有一套要求 **必須（SHALL）** 滿足。"
* valueCodeableConcept.extension ^comment = "無論使用或定義擴充的機構或管轄區，任何應用程式、專案或標準使用擴充都不背負任何污名（stigma）。使用擴充是允許FHIR規範為每個人保留一個核心的簡易性。"
* valueCodeableConcept.coding ^short = "由專門術語系統（terminology system）定義的代碼"
* valueCodeableConcept.coding ^definition = "由專門術語系統（terminology system）所定義之代碼的參照"
* valueCodeableConcept.coding ^requirements = "允許代碼系統中的替代編碼，以及翻譯到其他編碼系統。"
* valueCodeableConcept.coding ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，例如：SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles ）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* valueCodeableConcept.coding[PostalCode3] ^short = "由專門術語系統（terminology system）定義的代碼"
* valueCodeableConcept.coding[PostalCode3] ^binding.description = "應填入所綁定值集中的其中一個代碼"
* valueCodeableConcept.coding[PostalCode3] ^definition = "由專門術語系統（terminology system）所定義之代碼的參照"
* valueCodeableConcept.coding[PostalCode3] ^requirements = "允許代碼系統中的替代編碼，以及翻譯到其他編碼系統。"
* valueCodeableConcept.coding[PostalCode3] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，例如：SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles ）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* valueCodeableConcept.coding[PostalCode3].id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* valueCodeableConcept.coding[PostalCode3].id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* valueCodeableConcept.coding[PostalCode3].extension ^short = "擴充的資料項目"
* valueCodeableConcept.coding[PostalCode3].extension ^definition = "可用於表示不屬於此資料項目基本定義的附加資訊。為了擴充的使用安全和可管理，對擴充的定義和使用有一套嚴格的管理。儘管任何實作者都可以定義一個擴充，但作為擴充定義的一部分，有一套要求 **必須（SHALL）** 滿足。"
* valueCodeableConcept.coding[PostalCode3].extension ^comment = "無論使用或定義擴充的機構或管轄區，任何應用程式、專案或標準使用擴充都不背負任何污名（stigma）。使用擴充是允許FHIR規範為每個人保留一個核心的簡易性。"
* valueCodeableConcept.coding[PostalCode3].system ^short = "專門術語系統（terminology system）的識別"
* valueCodeableConcept.coding[PostalCode3].system ^definition = "定義代碼中符號意義的代碼系統識別"
* valueCodeableConcept.coding[PostalCode3].system ^requirements = "需要明確說明符號定義的來源"
* valueCodeableConcept.coding[PostalCode3].system ^comment = "URI可以是一個OID（urn:oid:...）或一個UUID（urn:uuid:...）；OID和UUID **必須(SHALL)** 參照HL7 OID註冊中心；否則，URI應該來自HL7的FHIR定義的特殊URI列表，或者它應該參照一些明確建立的系统定義。"
* valueCodeableConcept.coding[PostalCode3].version ^short = "系統的版本—如果相關的話"
* valueCodeableConcept.coding[PostalCode3].version ^definition = "選擇此代碼時使用的代碼系統版本；請注意，一個維護良好的代碼系統不需要版本報告，因為代碼的意義在不同系統版本中是一致的；然而，不能始終保證這點，當不能保證意義一致時， **必須(SHALL)** 將版本資訊也一併作交換。"
* valueCodeableConcept.coding[PostalCode3].version ^comment = "如果專門術語沒有明確定義應該使用什麼字串來識別代碼系統的版本，建議使用版本正式發布的日期（用FHIR日期格式表示）作為版本日期。"
* valueCodeableConcept.coding[PostalCode3].code ^short = "系統定義的語法之符號"
* valueCodeableConcept.coding[PostalCode3].code ^definition = "系統定義的語法之符號；符號可能是一個預先定義的代碼，也可能是代碼系統定義的語法中的表達式（如後組合配對／後組合式）。"
* valueCodeableConcept.coding[PostalCode3].code ^requirements = "需要參照系統中的一個特定代碼"
* valueCodeableConcept.coding[PostalCode3].display ^short = "由系統定義的表示法"
* valueCodeableConcept.coding[PostalCode3].display ^definition = "遵循系統的規則以呈現代碼含義的表示法"
* valueCodeableConcept.coding[PostalCode3].display ^requirements = "需要能為不了解此系統的讀者呈現可讀的代碼含義"
* valueCodeableConcept.coding[PostalCode3].userSelected ^short = "此編碼是否由使用者直接選擇？"
* valueCodeableConcept.coding[PostalCode3].userSelected ^definition = "表明此編碼是由使用者直接選擇，例如：從可用項目（代碼或顯示名稱）的清單中選擇。"
* valueCodeableConcept.coding[PostalCode3].userSelected ^requirements = "已被確定為一個臨床安全準則—此確切的系統／代碼對(code pair)是被明確選擇的，而不是由系統根據一些規則或是程式語言處理判斷。"
* valueCodeableConcept.coding[PostalCode3].userSelected ^comment = "在一系列備選方案中，直接選擇的代碼是新翻譯最合適的起點；關於「直接選擇」的確切意義，存在模糊不清之處，可能需要貿易夥伴的同意，以更完整澄清此資料項目的使用及其後果。"
* valueCodeableConcept.coding[PostalCode5] ^short = "由專門術語系統（terminology system）定義的代碼"
* valueCodeableConcept.coding[PostalCode5] ^binding.description = "應填入所綁定值集中的其中一個代碼"
* valueCodeableConcept.coding[PostalCode5] ^definition = "由專門術語系統（terminology system）所定義之代碼的參照"
* valueCodeableConcept.coding[PostalCode5] ^requirements = "允許代碼系統中的替代編碼，以及翻譯到其他編碼系統。"
* valueCodeableConcept.coding[PostalCode5] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，例如：SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles ）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* valueCodeableConcept.coding[PostalCode5].id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* valueCodeableConcept.coding[PostalCode5].id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* valueCodeableConcept.coding[PostalCode5].extension ^short = "擴充的資料項目"
* valueCodeableConcept.coding[PostalCode5].extension ^definition = "可用於表示不屬於此資料項目基本定義的附加資訊。為了擴充的使用安全和可管理，對擴充的定義和使用有一套嚴格的管理。儘管任何實作者都可以定義一個擴充，但作為擴充定義的一部分，有一套要求 **必須（SHALL）** 滿足。"
* valueCodeableConcept.coding[PostalCode5].extension ^comment = "無論使用或定義擴充的機構或管轄區，任何應用程式、專案或標準使用擴充都不背負任何污名（stigma）。使用擴充是允許FHIR規範為每個人保留一個核心的簡易性。"
* valueCodeableConcept.coding[PostalCode5].system ^short = "專門術語系統（terminology system）的識別"
* valueCodeableConcept.coding[PostalCode5].system ^definition = "定義代碼中符號意義的代碼系統識別"
* valueCodeableConcept.coding[PostalCode5].system ^requirements = "需要明確說明符號定義的來源"
* valueCodeableConcept.coding[PostalCode5].system ^comment = "URI可以是一個OID（urn:oid:...）或一個UUID（urn:uuid:...）；OID和UUID **必須(SHALL)** 參照HL7 OID註冊中心；否則，URI應該來自HL7的FHIR定義的特殊URI列表，或者它應該參照一些明確建立的系统定義。"
* valueCodeableConcept.coding[PostalCode5].version ^short = "系統的版本—如果相關的話"
* valueCodeableConcept.coding[PostalCode5].version ^definition = "選擇此代碼時使用的代碼系統版本；請注意，一個維護良好的代碼系統不需要版本報告，因為代碼的意義在不同系統版本中是一致的；然而，不能始終保證這點，當不能保證意義一致時， **必須(SHALL)** 將版本資訊也一併作交換。"
* valueCodeableConcept.coding[PostalCode5].version ^comment = "如果專門術語沒有明確定義應該使用什麼字串來識別代碼系統的版本，建議使用版本正式發布的日期（用FHIR日期格式表示）作為版本日期。"
* valueCodeableConcept.coding[PostalCode5].code ^short = "系統定義的語法之符號"
* valueCodeableConcept.coding[PostalCode5].code ^definition = "系統定義的語法之符號；符號可能是一個預先定義的代碼，也可能是代碼系統定義的語法中的表達式（如後組合配對／後組合式）。"
* valueCodeableConcept.coding[PostalCode5].code ^requirements = "需要參照系統中的一個特定代碼"
* valueCodeableConcept.coding[PostalCode5].display ^short = "由系統定義的表示法"
* valueCodeableConcept.coding[PostalCode5].display ^definition = "遵循系統的規則以呈現代碼含義的表示法"
* valueCodeableConcept.coding[PostalCode5].display ^requirements = "需要能為不了解此系統的讀者呈現可讀的代碼含義"
* valueCodeableConcept.coding[PostalCode5].userSelected ^short = "此編碼是否由使用者直接選擇？"
* valueCodeableConcept.coding[PostalCode5].userSelected ^definition = "表明此編碼是由使用者直接選擇，例如：從可用項目（代碼或顯示名稱）的清單中選擇。"
* valueCodeableConcept.coding[PostalCode5].userSelected ^requirements = "已被確定為一個臨床安全準則—此確切的系統／代碼對(code pair)是被明確選擇的，而不是由系統根據一些規則或是程式語言處理判斷。"
* valueCodeableConcept.coding[PostalCode5].userSelected ^comment = "在一系列備選方案中，直接選擇的代碼是新翻譯最合適的起點；關於「直接選擇」的確切意義，存在模糊不清之處，可能需要貿易夥伴的同意，以更完整澄清此資料項目的使用及其後果。"
* valueCodeableConcept.coding[PostalCode6] ^short = "由專門術語系統（terminology system）定義的代碼"
* valueCodeableConcept.coding[PostalCode6] ^binding.description = "應填入所綁定值集中的其中一個代碼"
* valueCodeableConcept.coding[PostalCode6] ^definition = "由專門術語系統（terminology system）所定義之代碼的參照"
* valueCodeableConcept.coding[PostalCode6] ^requirements = "允許代碼系統中的替代編碼，以及翻譯到其他編碼系統。"
* valueCodeableConcept.coding[PostalCode6] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，例如：SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles ）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* valueCodeableConcept.coding[PostalCode6].id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* valueCodeableConcept.coding[PostalCode6].id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* valueCodeableConcept.coding[PostalCode6].extension ^short = "擴充的資料項目"
* valueCodeableConcept.coding[PostalCode6].extension ^definition = "可用於表示不屬於此資料項目基本定義的附加資訊。為了擴充的使用安全和可管理，對擴充的定義和使用有一套嚴格的管理。儘管任何實作者都可以定義一個擴充，但作為擴充定義的一部分，有一套要求 **必須（SHALL）** 滿足。"
* valueCodeableConcept.coding[PostalCode6].extension ^comment = "無論使用或定義擴充的機構或管轄區，任何應用程式、專案或標準使用擴充都不背負任何污名（stigma）。使用擴充是允許FHIR規範為每個人保留一個核心的簡易性。"
* valueCodeableConcept.coding[PostalCode6].system ^short = "專門術語系統（terminology system）的識別"
* valueCodeableConcept.coding[PostalCode6].system ^definition = "定義代碼中符號意義的代碼系統識別"
* valueCodeableConcept.coding[PostalCode6].system ^requirements = "需要明確說明符號定義的來源"
* valueCodeableConcept.coding[PostalCode6].system ^comment = "URI可以是一個OID（urn:oid:...）或一個UUID（urn:uuid:...）；OID和UUID **必須(SHALL)** 參照HL7 OID註冊中心；否則，URI應該來自HL7的FHIR定義的特殊URI列表，或者它應該參照一些明確建立的系统定義。"
* valueCodeableConcept.coding[PostalCode6].version ^short = "系統的版本—如果相關的話"
* valueCodeableConcept.coding[PostalCode6].version ^definition = "選擇此代碼時使用的代碼系統版本；請注意，一個維護良好的代碼系統不需要版本報告，因為代碼的意義在不同系統版本中是一致的；然而，不能始終保證這點，當不能保證意義一致時， **必須(SHALL)** 將版本資訊也一併作交換。"
* valueCodeableConcept.coding[PostalCode6].version ^comment = "如果專門術語沒有明確定義應該使用什麼字串來識別代碼系統的版本，建議使用版本正式發布的日期（用FHIR日期格式表示）作為版本日期。"
* valueCodeableConcept.coding[PostalCode6].code ^short = "系統定義的語法之符號"
* valueCodeableConcept.coding[PostalCode6].code ^definition = "系統定義的語法之符號；符號可能是一個預先定義的代碼，也可能是代碼系統定義的語法中的表達式（如後組合配對／後組合式）。"
* valueCodeableConcept.coding[PostalCode6].code ^requirements = "需要參照系統中的一個特定代碼"
* valueCodeableConcept.coding[PostalCode6].display ^short = "由系統定義的表示法"
* valueCodeableConcept.coding[PostalCode6].display ^definition = "遵循系統的規則以呈現代碼含義的表示法"
* valueCodeableConcept.coding[PostalCode6].display ^requirements = "需要能為不了解此系統的讀者呈現可讀的代碼含義"
* valueCodeableConcept.coding[PostalCode6].userSelected ^short = "此編碼是否由使用者直接選擇？"
* valueCodeableConcept.coding[PostalCode6].userSelected ^definition = "表明此編碼是由使用者直接選擇，例如：從可用項目（代碼或顯示名稱）的清單中選擇。"
* valueCodeableConcept.coding[PostalCode6].userSelected ^requirements = "已被確定為一個臨床安全準則—此確切的系統／代碼對(code pair)是被明確選擇的，而不是由系統根據一些規則或是程式語言處理判斷。"
* valueCodeableConcept.coding[PostalCode6].userSelected ^comment = "在一系列備選方案中，直接選擇的代碼是新翻譯最合適的起點；關於「直接選擇」的確切意義，存在模糊不清之處，可能需要貿易夥伴的同意，以更完整澄清此資料項目的使用及其後果。"
* valueCodeableConcept.text ^short = "概念的文字表示法"
* valueCodeableConcept.text ^definition = "輸入資料的使用者所見／所選／所說的人類可讀文字表述，和（或）其代表使用者的預期含義。"
* valueCodeableConcept.text ^requirements = "專門術語中的代碼並不總是能捕捉人類使用的細微差別的正確意義，或者根本就沒有合適的代碼；這些情況下，文字表述被用來捕捉來源的全部意義。"
* valueCodeableConcept.text ^comment = "很多時候，此文字表述與其中一個代碼的顯示名稱相同。"