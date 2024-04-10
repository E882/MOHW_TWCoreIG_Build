Alias: $tw-postal-code = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-postal-code
Alias: $tw-village = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-village
Alias: $tw-neighborhood = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-neighborhood
Alias: $tw-section = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-section
Alias: $tw-lane = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-lane
Alias: $tw-alley = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-alley
Alias: $tw-number = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-number
Alias: $tw-floor = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-floor
Alias: $tw-room = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-room

Profile: TWCoreAddress
Parent: Address
Id: Address-twcore
Title: "TW Core Address"
Description: "此臺灣核心-地址（TW Core Address) Profile說明本IG如何進一步定義FHIR的Address資料類型以呈現臺灣地址。  
本Profile之擴充的資料項目（Extension）為參照[初診基本資料表](https://www.eck.org.tw/wp-content/uploads/2019/10/ECK_FIRSTVIEW_INFOR.pdf)之欄位與[中華郵政地址英譯寫法](https://www.post.gov.tw/post/internet/Postal/sz_a_e_ta1.jsp)，若貴機構有詳細地址資訊之需求，可依情況填選；若無需區分詳細地址資訊，可使用原生欄位`text`、`line`、`district`呈現。"
* ^version = "0.2.2"
* ^kind = #complex-type
* use and type and postalCode and line and city and district and country MS
* postalCode.extension contains $tw-postal-code named PostalCode 0..1 MS
* postalCode.extension[PostalCode].valueCodeableConcept	 MS
* line 0..1
* line ^short = "路/街"
* line ^alias[0] = "路"
* line ^alias[+] = "街"
* city ^short = "鄉/鎮/市/區"
* city ^alias[0] = "鄉"
* city ^alias[+] = "鎮"
* city ^alias[+] = "市"
* city ^alias[+] = "區"
* district ^short = "縣/市"
* district ^alias[0] = "縣"
* district ^alias[=] = "市"
* extension contains
    $tw-room named room 0..1 and
    $tw-floor named floor 0..1 and
    $tw-number named number 0..1 and
    $tw-alley named alley 0..1 and
    $tw-lane named lane 0..1 and
    $tw-section named section 0..1 and
    $tw-neighborhood named neighborhood 0..1 and
    $tw-village named village 0..1
* extension[village] ^short = "村(里)"
* extension[village] ^alias[0] = "村"
* extension[village] ^alias[+] = "里"
* extension[neighborhood] ^short = "鄰"
* extension[section] ^short = "段"
* extension[lane] ^short = "巷/衖"
* extension[lane] ^alias[0] = "巷"
* extension[lane] ^alias[+] = "衖"
* extension[alley] ^short = "弄"
* extension[number] ^short = "號"
* extension[floor] ^short = "樓"
* extension[room] ^short = "室"
* extension[village] and extension[neighborhood] and extension[section] and extension[lane] and extension[alley] and extension[number] and extension[floor] and extension[room] MS

* . ^short = "使用郵政規範表達的地址（相對於GPS或其他位置定義格式）"
* . ^definition = "使用郵政規範表達的地址（相對於GPS或其他位置定義格式）。這種data type可用於傳達投遞郵件的位址，以及用於訪問可能對郵件投遞無效的位置，這世界定義了各種郵政地址格式。"
* . ^comment = "注意：地址的目的是描述用於管理目的之郵政地址，而不是描述絕對的地理座標。郵政地址經常被用作實體位置的代表（亦可見[Location](http://hl7.org/fhir/R4/location.html#)resource）。"
* id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* use ^short = "home ｜ work ｜ temp ｜ old ｜ billing － 此地址的用途"
* use ^binding.description = "應填入AddressUse值集中的其中一個代碼"
* use ^definition = "此地址的用途"
* use ^requirements = "允許從清單中挑選適當的地址用途"
* use ^comment = "應用程式可假定一個地址是目前使用中，除非它明確說它是暫時的或舊的。"
* type ^short = "postal ｜ physical ｜ both"
* type ^binding.description = "應填入AddressType值集中的其中一個代碼"
* type ^definition = "區分實際地址（你可以拜訪的地址）和郵寄地址（如郵政信箱和轉遞地址），大多數地址都是這兩種。"
* type ^comment = "地址的定義指出「地址旨在描述郵政地址，而不是實體位置」。但許多應用程式追蹤一個地址是否具有雙重目的，既是一個可以拜訪的地點，亦是一個有效的投遞目的地，郵政地址經常被用作實體位置的代表（亦可見[Location](http://hl7.org/fhir/R4/location.html#)resource）。"
* text ^short = "地址的文字表述"
* text ^definition = "具體說明整個地址，因為它應該顯示在郵政標籤上，這可替代或與特定的部分一起提供。"
* text ^requirements = "一個可呈現的、未編碼的形式。"
* text ^comment = "可以同時提供文字表述和各部分的地址資料項目內容。更新地址的應用程式 **必須（SHALL）** 確保當文字表述和各部分的地址資料項目內容都存在時，文字表述不包括各部分的地址資料項目內容中沒有的內容，意即兩者內容會一致。"
* line ^definition = "此部分包含門牌號碼、公寓號碼、街道名稱、街道方向、郵政信箱號碼、送貨提示以及類似的地址資訊。"
* city ^definition = "市、鄉、鎮、村或其他社區或配送中心的名稱。"
* district ^definition = "行政區域（縣）的名稱"
* district ^comment = "區（district）有時被稱為縣（country），但在一些區域（regions），「縣（country）」被用來代替市（直轄市），所以縣名應該用市名來代替傳達。"
* state ^short = "國家的子單位（縮寫也可以）"
* state ^definition = "一個國家的子單位，在聯邦組織的國家中擁有有限的主權。如果代碼被普遍使用，可使用代碼（例如：美國2個字母的州代碼）。"
* postalCode ^short = "郵遞區號"
* postalCode ^definition = "指定一個由郵政服務定義的區域之郵遞區號"
* postalCode.id ^short = "xml：id（或JSON格式）。"
* postalCode.id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* postalCode.extension ^short = "擴充的資料項目"
* postalCode.extension ^definition = "擴充的資料項目"
* postalCode.extension[PostalCode].value[x] ^comment = "並非所有的專門術語使用都符合這個一般模式。在某些情況下，資料模型不應該使用CodeableConcept，而應直接使用Coding，並提供他們自己的結構來管理文字、編碼、翻譯、資料項目之間的關係、先組合配對（pre-）和後組合配對（post-coordination）。"
* postalCode.extension[PostalCode].valueCodeableConcept.id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* postalCode.extension[PostalCode].valueCodeableConcept.id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* postalCode.extension[PostalCode].valueCodeableConcept.extension ^short = "擴充的資料項目"
* postalCode.extension[PostalCode].valueCodeableConcept.extension ^definition = "可用於表示不屬於此資料項目基本定義的附加資訊。為了擴充的使用安全和可管理，對擴充的定義和使用有一套嚴格的管理。儘管任何實作者都可以定義一個擴充，但作為擴充定義的一部分，有一套要求 **必須（SHALL）** 滿足。"
* postalCode.extension[PostalCode].valueCodeableConcept.extension ^comment = "無論使用或定義擴充的機構或管轄區，任何應用程式、專案或標準使用擴充都不背負任何污名（stigma）。使用擴充是允許FHIR規範為每個人保留一個核心的簡易性。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding ^short = "由專門術語系統（terminology system）定義的代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding ^definition = "由專門術語系統（terminology system）所定義之代碼的參照"
* postalCode.extension[PostalCode].valueCodeableConcept.coding ^requirements = "允許代碼系統中的替代編碼，以及翻譯到其他編碼系統。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，例如：SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3] ^short = "由專門術語系統（terminology system）定義的代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3] ^binding.description = "應填入所綁定值集中的其中一個代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3] ^definition = "由專門術語系統（terminology system）所定義之代碼的參照"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3] ^requirements = "允許代碼系統中的替代編碼，以及翻譯到其他編碼系統。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，例如：SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].extension ^short = "擴充的資料項目"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].extension ^definition = "可用於表示不屬於此資料項目基本定義的附加資訊。為了擴充的使用安全和可管理，對擴充的定義和使用有一套嚴格的管理。儘管任何實作者都可以定義一個擴充，但作為擴充定義的一部分，有一套要求 **必須（SHALL）** 滿足。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].extension ^comment = "無論使用或定義擴充的機構或管轄區，任何應用程式、專案或標準使用擴充都不背負任何污名（stigma）。使用擴充是允許FHIR規範為每個人保留一個核心的簡易性。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].system ^short = "專門術語系統（terminology system）的識別"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].system ^definition = "定義代碼中符號意義的代碼系統識別"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].system ^requirements = "需要明確說明符號定義的來源"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].system ^comment = "URI可以是一個OID（urn:oid:...）或一個UUID（urn:uuid:...）；OID和UUID **必須（SHALL）** 參照HL7 OID註冊中心；否則，URI應該來自HL7的FHIR定義的特殊URI列表，或者它應該參照一些明確建立的系统定義。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].version ^short = "系統的版本—如果相關的話"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].version ^definition = "選擇此代碼時使用的代碼系統版本；請注意，一個維護良好的代碼系統不需要版本報告，因為代碼的意義在不同系統版本中是一致的；然而，不能始終保證這點，當不能保證意義一致時， **必須（SHALL）** 將版本資訊也一併作交換。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].version ^comment = "如果專門術語沒有明確定義應該使用什麼字串來識別代碼系統的版本，建議使用版本正式發布的日期（用FHIR日期格式表示）作為版本日期。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].code ^short = "系統定義的語法之符號"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].code ^definition = "系統定義的語法之符號；符號可能是一個預先定義的代碼，也可能是代碼系統定義的語法中的表達式（如後組合配對／後組合式）。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].code ^requirements = "需要參照系統中的一個特定代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].display ^short = "由系統定義的表示法"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].display ^definition = "遵循系統的規則以呈現代碼含義的表示法"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].display ^requirements = "需要能為不了解此系統的讀者呈現可讀的代碼含義"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].userSelected ^short = "此編碼是否由使用者直接選擇？"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].userSelected ^definition = "表明此編碼是由使用者直接選擇，例如：從可用項目（代碼或顯示名稱）的清單中選擇。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].userSelected ^requirements = "已被確定為一個臨床安全準則—此確切的系統／代碼對(code pair)是被明確選擇的，而不是由系統根據一些規則或是程式語言處理判斷。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].userSelected ^comment = "在一系列備選方案中，直接選擇的代碼是新翻譯最合適的起點；關於「直接選擇」的確切意義，存在模糊不清之處，可能需要貿易夥伴的同意，以更完整澄清此資料項目的使用及其後果。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5] ^short = "由專門術語系統（terminology system）定義的代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5] ^binding.description = "應填入所綁定值集中的其中一個代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5] ^definition = "由專門術語系統（terminology system）所定義之代碼的參照"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5] ^requirements = "允許代碼系統中的替代編碼，以及翻譯到其他編碼系統。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，例如：SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].extension ^short = "擴充的資料項目"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].extension ^definition = "可用於表示不屬於此資料項目基本定義的附加資訊。為了擴充的使用安全和可管理，對擴充的定義和使用有一套嚴格的管理。儘管任何實作者都可以定義一個擴充，但作為擴充定義的一部分，有一套要求 **必須（SHALL）** 滿足。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].extension ^comment = "無論使用或定義擴充的機構或管轄區，任何應用程式、專案或標準使用擴充都不背負任何污名（stigma）。使用擴充是允許FHIR規範為每個人保留一個核心的簡易性。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].system ^short = "專門術語系統（terminology system）的識別"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].system ^definition = "定義代碼中符號意義的代碼系統識別"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].system ^requirements = "需要明確說明符號定義的來源"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].system ^comment = "URI可以是一個OID（urn:oid:...）或一個UUID（urn:uuid:...）；OID和UUID **必須（SHALL）** 參照HL7 OID註冊中心；否則，URI應該來自HL7的FHIR定義的特殊URI列表，或者它應該參照一些明確建立的系统定義。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].version ^short = "系統的版本—如果相關的話"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].version ^definition = "選擇此代碼時使用的代碼系統版本；請注意，一個維護良好的代碼系統不需要版本報告，因為代碼的意義在不同系統版本中是一致的；然而，不能始終保證這點，當不能保證意義一致時， **必須（SHALL）** 將版本資訊也一併作交換。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].version ^comment = "如果專門術語沒有明確定義應該使用什麼字串來識別代碼系統的版本，建議使用版本正式發布的日期（用FHIR日期格式表示）作為版本日期。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].code ^short = "系統定義的語法之符號"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].code ^definition = "系統定義的語法之符號；符號可能是一個預先定義的代碼，也可能是代碼系統定義的語法中的表達式（如後組合配對／後組合式）。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].code ^requirements = "需要參照系統中的一個特定代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].display ^short = "由系統定義的表示法"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].display ^definition = "遵循系統的規則以呈現代碼含義的表示法"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].display ^requirements = "需要能為不了解此系統的讀者呈現可讀的代碼含義"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].userSelected ^short = "此編碼是否由使用者直接選擇？"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].userSelected ^definition = "表明此編碼是由使用者直接選擇，例如：從可用項目（代碼或顯示名稱）的清單中選擇。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].userSelected ^requirements = "已被確定為一個臨床安全準則—此確切的系統／代碼對(code pair)是被明確選擇的，而不是由系統根據一些規則或是程式語言處理判斷。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode5].userSelected ^comment = "在一系列備選方案中，直接選擇的代碼是新翻譯最合適的起點；關於「直接選擇」的確切意義，存在模糊不清之處，可能需要貿易夥伴的同意，以更完整澄清此資料項目的使用及其後果。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6] ^short = "由專門術語系統（terminology system）定義的代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6] ^binding.description = "應填入所綁定值集中的其中一個代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6] ^definition = "由專門術語系統（terminology system）所定義之代碼的參照"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6] ^requirements = "允許代碼系統中的替代編碼，以及翻譯到其他編碼系統。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，例如：SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].id ^short = "唯一可識別ID，以供資料項目間相互參照。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].id ^definition = "resource中資料項目的唯一ID（用於內部參照）。這可以是任何不含空格的字串。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].extension ^short = "擴充的資料項目"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].extension ^definition = "可用於表示不屬於此資料項目基本定義的附加資訊。為了擴充的使用安全和可管理，對擴充的定義和使用有一套嚴格的管理。儘管任何實作者都可以定義一個擴充，但作為擴充定義的一部分，有一套要求 **必須（SHALL）** 滿足。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].extension ^comment = "無論使用或定義擴充的機構或管轄區，任何應用程式、專案或標準使用擴充都不背負任何污名（stigma）。使用擴充是允許FHIR規範為每個人保留一個核心的簡易性。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].system ^short = "專門術語系統（terminology system）的識別"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].system ^definition = "定義代碼中符號意義的代碼系統識別"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].system ^requirements = "需要明確說明符號定義的來源"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].system ^comment = "URI可以是一個OID（urn:oid:...）或一個UUID（urn:uuid:...）；OID和UUID **必須（SHALL）** 參照HL7 OID註冊中心；否則，URI應該來自HL7的FHIR定義的特殊URI列表，或者它應該參照一些明確建立的系统定義。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].version ^short = "系統的版本—如果相關的話"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].version ^definition = "選擇此代碼時使用的代碼系統版本；請注意，一個維護良好的代碼系統不需要版本報告，因為代碼的意義在不同系統版本中是一致的；然而，不能始終保證這點，當不能保證意義一致時， **必須（SHALL）** 將版本資訊也一併作交換。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].version ^comment = "如果專門術語沒有明確定義應該使用什麼字串來識別代碼系統的版本，建議使用版本正式發布的日期（用FHIR日期格式表示）作為版本日期。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].code ^short = "系統定義的語法之符號"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].code ^definition = "系統定義的語法之符號；符號可能是一個預先定義的代碼，也可能是代碼系統定義的語法中的表達式（如後組合配對／後組合式）。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].code ^requirements = "需要參照系統中的一個特定代碼"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].display ^short = "由系統定義的表示法"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].display ^definition = "遵循系統的規則以呈現代碼含義的表示法"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].display ^requirements = "需要能為不了解此系統的讀者呈現可讀的代碼含義"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].userSelected ^short = "此編碼是否由使用者直接選擇？"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].userSelected ^definition = "表明此編碼是由使用者直接選擇，例如：從可用項目（代碼或顯示名稱）的清單中選擇。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].userSelected ^requirements = "已被確定為一個臨床安全準則—此確切的系統／代碼對(code pair)是被明確選擇的，而不是由系統根據一些規則或是程式語言處理判斷。"
* postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode6].userSelected ^comment = "在一系列備選方案中，直接選擇的代碼是新翻譯最合適的起點；關於「直接選擇」的確切意義，存在模糊不清之處，可能需要貿易夥伴的同意，以更完整澄清此資料項目的使用及其後果。"
* postalCode.extension[PostalCode].valueCodeableConcept.text ^short = "概念的文字表示法"
* postalCode.extension[PostalCode].valueCodeableConcept.text ^definition = "輸入資料的使用者所見／所選／所說的人類可讀文字表述，和（或）其代表使用者的預期含義。"
* postalCode.extension[PostalCode].valueCodeableConcept.text ^requirements = "專門術語中的代碼並不總是能捕捉人類使用的細微差別的正確意義，或者根本就沒有合適的代碼；這些情況下，文字表述被用來捕捉來源的全部意義。"
* postalCode.extension[PostalCode].valueCodeableConcept.text ^comment = "很多時候，此文字表述與其中一個代碼的顯示名稱相同。"
* postalCode.value ^short = "郵遞區號"
* postalCode.value ^definition = "實際值"
* country ^short = "國家（例如：ISO 3166的2個或3個字母代碼）。"
* country ^definition = "國家—通常被理解為或普遍被接受的一個國家。"
* country ^comment = "可用ISO 3166的3個字母代碼來代替人類可讀的國家名"
* period ^short = "此地址曾經／正在使用的時間區間"
* period ^definition = "此地址曾經／正在使用的時間區間"
* period ^requirements = "允許將地址依時間排放"

