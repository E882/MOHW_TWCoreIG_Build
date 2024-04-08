Alias: $medicationdispense-category = http://hl7.org/fhir/R4/codesystem-medicationdispense-category.html
Alias: $medication-fda-tw = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medication-fda-tw
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-substanceAdminSubstitution = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution
Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason

Instance: med-dis-injection-example
InstanceOf: TWCoreMedicationDispense
Usage: #example
* status = #completed
* category = $medicationdispense-category#inpatient
* medicationCodeableConcept = $medication-fda-tw#衛部菌疫輸字第001080號 "爽胰達注射劑100單位+50微克"
* medicationCodeableConcept.text = "爽胰達注射劑100單位+50微克"
* subject = Reference(Patient/pat-example)
* context = Reference(Encounter/enc-example)
* performer.actor = Reference(Practitioner/pra-phc-example)
* type = $v3-ActCode#DF "Daily Fill"
* quantity.value = 1
* quantity.unit = "Intravenous Solution"
* quantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* quantity.code = http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#IVSOL
* daysSupply.value = 3
* daysSupply.unit = "days"
* whenPrepared = "2022-08-01T11:45:00+08:00"
* whenHandedOver = "2022-08-01T12:00:00+08:00"
* dosageInstruction.text = "每日注射一次，於餐前一小時內注射，建議固定在同一餐的餐前注射"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* substitution.wasSubstituted = false
* substitution.type = $v3-substanceAdminSubstitution#N "none"
* substitution.reason = $v3-ActReason#FP "formulary policy"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>爽胰達注射劑100單位50微克藥品配藥資料</b>
	</h3>
	<p>
		<b>配藥的狀態</b>：Completed <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://hl7.org/fhir/R4/codesystem-medicationdispense-status.html\">MedicationDispense Status Codes</a>#completed) </span>
	</p>

    <p>
		<b>配藥的分類</b>： Inpatient <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://hl7.org/fhir/R4/codesystem-medicationdispense-category.html\">MedicationDispense Category Codes</a>#inpatient) </span>
	</p>

	<p>
		<b>配藥的類型</b>：Daily Fill <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://hl7.org/implement/standards/fhir/R4/v3/ActPharmacySupplyType/vs.html\">V3 Value SetActPharmacySupplyType</a>#DF) </span>
	</p>

    <p>
		<b>藥品</b>：爽胰達注射劑100單位50微克 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-medication-fda-tw.html\">臺灣藥品許可證</a>#衛部菌疫輸字第001080號) </span>
	</p>

	<p>
		<b>病人</b>：<a href=\"Patient-pat-example.html\">Patient/pat-example</a> \"陳加玲\"
	</p>

	<p>
		<b>就醫資料</b>：<a href=\"Encounter-enc-example.html\">Encounter/enc-example</a>
	</p>

    <p>
		<b>配藥者</b>：<a href=\"Practitioner-pra-phc-example.html\">Practitioner/pra-phc-example</a> \"陳耀詩\"
	</p>

    <blockquote>
	<p><b>配藥資料</b>：</p>
    <p>
    <b>藥品總劑量</b>：1 Intravenous Solution <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm\">OrderableDrugForm</a>#IVSOL) </span> <br />
    <b>藥品天數</b>：3 days <br />
	<b>藥品使用方法</b>：每日注射一次，於餐前一小時內注射，建議固定在同一餐的餐前注射 <br />
	<b>藥品包裝和審核時間</b>：2022-08-01T11:45:00 <br />
    <b>藥品發放的時間</b>：2022-08-01T12:00:00
	</p>
    </blockquote>

	<blockquote>
	<p><b>藥品替代資料</b>：</p>
    <p>
    <b>配藥是否與處方要求不同</b>：none <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution\">SubstanceAdminSubstitution</a>#N) </span> <br />
	<b>替代原因</b>：formulary policy <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-ActReason\">ActReason</a>#FP) </span>
	</p>
    </blockquote>
</div>"

