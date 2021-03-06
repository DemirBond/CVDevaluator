//
//  BioPersonal.swift
//  CVDEvaluator
//
//  Created by IgorKhomiak on 2/3/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit


class Gender: EvaluationItem {
	let male = EvaluationItem(literal: Presentation.male)
	let female = EvaluationItem(literal: Presentation.female)
	
	override var items: [EvaluationItem] {
		return [male, female]
	}
}

class SBP90130: EvaluationItem {
	
	let sbp90 = EvaluationItem(literal: Presentation.bioSBPNumber90)
	let sbp130 = EvaluationItem(literal: Presentation.bioSBPNumber130)
	
	override var items: [EvaluationItem] {
		return [
			sbp90,
			sbp130
		]
	}
}

class DBP90: EvaluationItem {
	
	let dbp90 = EvaluationItem(literal: Presentation.bioDBPNumber90)
	
	override var items: [EvaluationItem] {
		return [
			dbp90
		]
	}
}

class BioPersonal: EvaluationItem {
		
	let name = EvaluationItem(literal: Presentation.name)
	let age = EvaluationItem(literal: Presentation.age)
	
	let gender = Gender(literal: Presentation.gender)
	let repRate = EvaluationItem(literal: Presentation.respRate)
	let bmi = EvaluationItem(literal: Presentation.bmi)
	let temp = EvaluationItem(literal: Presentation.temp)
	let weight = EvaluationItem(literal: Presentation.weight)
	let heartRate = EvaluationItem(literal: Presentation.heartRate)
	let sbp = SBP90130(literal: Presentation.bioSBP)
	let dbp = DBP90(literal: Presentation.bioDBP)
	
	let bioOrthostaticSBP = EvaluationItem(literal: Presentation.bioOrthostaticSBP)
	let bioOrthostaticSymptoms = EvaluationItem(literal: Presentation.bioOrthostaticSymptoms)
	let bioWaistCirc = EvaluationItem(literal: Presentation.bioWaistCirc)
	let bioAA = EvaluationItem(literal: Presentation.bioAA)
	let bioPregnancy = EvaluationItem(literal: Presentation.bioPregnancy)
	let bioO2sat = EvaluationItem(literal: Presentation.bioO2sat)
	
	override var items: [EvaluationItem] {
		return [
			name,
			age,
			gender,
			bmi,
			temp,
			repRate,
			weight,
			heartRate,
			sbp,
			dbp,
			bioOrthostaticSBP,
			bioOrthostaticSymptoms,
			bioWaistCirc,
			bioAA,
			bioPregnancy,
			bioO2sat
		]
	}
	
	//Phillips Edit: This function is never called... Past devs?
	func copyValuesFrom(model: BioPersonal) {
		self.name.storedValue?.value = model.name.storedValue?.value
		self.age.storedValue?.value = model.age.storedValue?.value
		self.gender.male.storedValue!.radioGroup?.selectedRadioItem = model.gender.male.storedValue!.radioGroup?.selectedRadioItem
		//print("theres gender in here")
		self.bmi.storedValue?.value = model.bmi.storedValue?.value
		self.weight.storedValue?.value = model.weight.storedValue?.value
		self.heartRate.storedValue?.value = model.heartRate.storedValue?.value
		self.sbp.storedValue?.value = model.sbp.storedValue?.value
		self.dbp.storedValue?.value = model.dbp.storedValue?.value
		
		// add all items in bio section
		self.bioOrthostaticSBP.storedValue?.value = model.bioOrthostaticSBP.storedValue?.value
		self.bioOrthostaticSymptoms.storedValue?.value = model.bioOrthostaticSymptoms.storedValue?.value
		self.bioWaistCirc.storedValue?.value = model.bioWaistCirc.storedValue?.value
		self.bioAA.storedValue?.value = model.bioAA.storedValue?.value
		self.bioPregnancy.storedValue?.value = model.bioPregnancy.storedValue?.value
		self.bioO2sat.storedValue?.value = model.bioO2sat.storedValue?.value
	}
}
