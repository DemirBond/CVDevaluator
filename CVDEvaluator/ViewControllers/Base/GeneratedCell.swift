//
//  GeneratedCell.swift
//  CVDEvaluator
//
//  Created by IgorKhomiak on 2/14/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit


protocol EvaluationEditing {
	
	func evaluationFieldDidBeginEditing(_ textField: UITextField, model: EvaluationItem)
	func evaluationValueDidChange(model: EvaluationItem)
	func keyboardReturnDidPress(model: EvaluationItem)
	func evaluationValueDidNotValidate(model: EvaluationItem, message: String, description: String?)
	func evaluationValueDidEnter(_ textField: UITextField, model: EvaluationItem)
	func evaluationFieldTogglesDropDown()
}


class GeneratedCell: UITableViewCell, UITextFieldDelegate, KBNumberPadDelegate {
	
	var cellModel: EvaluationItem! {
		didSet{
			if cellModel != nil {
				setupCell()
			}
		}
	}
	
	var delegate: EvaluationEditing?
	
	@IBOutlet weak var titleLabel: UILabel?
	@IBOutlet weak var subtitleLabel: UILabel?
	@IBOutlet weak var icon: UIImageView?
	@IBOutlet weak var disclosureIcon: UIImageView?
	@IBOutlet weak var button: UIButton?
	@IBOutlet weak var textField: UITextField?
	@IBOutlet weak var secondaryTextField: UITextField?
	@IBOutlet var textFieldCollection: [UITextField]!
	
	var numberPad: KBNumberPad?
	
	// expandableCell outlets
	
	@IBOutlet weak var iconOne: UIImageView?
	@IBOutlet weak var iconTwo: UIImageView?
	@IBOutlet weak var iconThree: UIImageView?
	@IBOutlet weak var buttonOne: UIButton?
	@IBOutlet weak var buttonTwo: UIButton?
	@IBOutlet weak var buttonThree: UIButton?
	@IBOutlet weak var subLabelOne: UILabel?
	@IBOutlet weak var subLabelTwo: UILabel?
	@IBOutlet weak var subLabelThree: UILabel?
	
	@IBOutlet weak var subTextFieldOne: UITextField?
	@IBOutlet weak var subTextFieldTwo: UITextField?
	@IBOutlet weak var subTextFieldThree: UITextField?
	
	@IBOutlet weak var sbpSubTextField: UITextField!
	@IBOutlet weak var sbpSubLabel: UILabel!
	@IBOutlet weak var sbpInfoLabel: UILabel!
	
	@IBOutlet weak var dbpSubTextField: UITextField!
	@IBOutlet weak var dbpSubLabel: UILabel!
	@IBOutlet weak var dbpInfoLabel: UILabel!
	
	var subCellSbpModelOne:EvaluationItem?
	var subCellDbpModelOne:EvaluationItem?
	
	var subCellModelOne:EvaluationItem?
	
	
	var subCellModelTwo:EvaluationItem?
	
	
	var subCellModelThree:EvaluationItem?

	/*
	var isCheckedButtonSubOne: Bool {
		get {
			return subCellModelOne!.storedValue!.isChecked
		}
		set {
			subCellModelOne?.storedValue!.isChecked = newValue
			updateCell()
			// self.delegate?.evaluationValueDidChange(model: cellModel)
			print("check box checked")
		}
	}
	
	var isCheckedButtonSubTwo: Bool {
		get {
			return subCellModelTwo!.storedValue!.isChecked // false // cellModel.storedValue!.isChecked
		}
		set {
			subCellModelTwo?.storedValue!.isChecked = newValue
			updateCell()
			// self.delegate?.evaluationValueDidChange(model: cellModel)
			print("check box checked")
		}
	}
	
	var isCheckedButtonSubThree: Bool {
		get {
			return subCellModelThree!.storedValue!.isChecked // false // cellModel.storedValue!.isChecked
		}
		set {
			subCellModelThree?.storedValue!.isChecked = newValue
			updateCell()
			// self.delegate?.evaluationValueDidChange(model: cellModel)
			print("check box checked")
		}
	}
	*/
	/*
	@IBAction func pressActionDownOne(_ sender: UIButton) {
		self.iconOne?.isHighlighted = true
	}
	
	@IBAction func pressActionUpOne(_ sender: UIButton) {
		self.iconOne?.isHighlighted = false
		isCheckedButtonSubOne = !isCheckedButtonSubOne
	}
	
	@IBAction func pressActionOutsideOne(_ sender: UIButton) {
		self.iconOne?.isHighlighted = false
	}


	@IBAction func pressActionDownTwo(_ sender: UIButton) {
		self.iconTwo?.isHighlighted = true
	}

	@IBAction func pressActionUpTwo(_ sender: UIButton) {
		self.iconTwo?.isHighlighted = false
		isCheckedButtonSubTwo = !isCheckedButtonSubTwo
	}

	@IBAction func pressActionOutsideTwo(_ sender: UIButton) {
		self.iconTwo?.isHighlighted = false
	}

	@IBAction func pressActionDownThree(_ sender: UIButton) {
		self.iconThree?.isHighlighted = true
	}

	@IBAction func pressActionUpThree(_ sender: UIButton) {
		self.iconThree?.isHighlighted = false
		isCheckedButtonSubThree = !isCheckedButtonSubThree
	}

	@IBAction func pressActionOutsideThree(_ sender: UIButton) {
		self.iconThree?.isHighlighted = false
	}
	*/
	
	func setupCell() {
		self.titleLabel?.textColor = CVDStyle.style.defaultFontColor
		self.titleLabel?.font = CVDStyle.style.currentFont
		
		//self.backgroundColor = UIColor(palette: ColorPalette.hanPurple)
		self.backgroundColor = UIColor(palette: ColorPalette.white)
		
		let isMandatory = cellModel.storedValue?.isMandatory ?? false
		let isSelected = cellModel.form.isSelected
		if isSelected {
			self.backgroundColor = UIColor(palette: ColorPalette.hanPurple)
			//self.backgroundColor = UIColor(palette: ColorPalette.white)
		}
		if cellModel.form.itemType == .separator {
			self.backgroundColor = UIColor(palette: ColorPalette.lighterPurple)
			//self.backgroundColor = UIColor(palette: ColorPalette.white)
		}
		
		// if itemtype is label then change to requested background color.
		if cellModel.form.itemType == .label {
			self.backgroundColor = UIColor(palette: ColorPalette.hanPurple)
		}
		
		let title = cellModel?.title ?? ""
		self.titleLabel?.text = title + (isMandatory ? "*" : "")
		
		self.subtitleLabel?.textColor = CVDStyle.style.subtitleColor
		self.subtitleLabel?.font = CVDStyle.style.currentFont
		self.subtitleLabel?.text = (cellModel?.subtitle ?? "")
		
		self.icon?.image = nil
		if let field = self.textField {
			//field.inputAccessoryView = self.accessoryBar
			field.font = CVDStyle.style.currentFont
			field.returnKeyType = .next
			field.placeholder = cellModel.storedValue?.placeholder
			field.text = self.cellModel.storedValue?.value
			drawFieldWithDefaultColor()
			
			if cellModel.form.itemType == .integerRight || cellModel.form.itemType == .integerLeft {
				numberPad = KBNumberPad(padType: .Integer, returnType: .Next)
				numberPad?.delegate = self
				field.inputView = numberPad
			}
			else if cellModel.form.itemType == .decimalRight || cellModel.form.itemType == .decimalLeft {
				numberPad = KBNumberPad(padType: .Decimal, returnType: .Next)
				numberPad?.delegate = self
				field.inputView = numberPad
			}
		}
		
		/// handle expandable cells
		let theitems = cellModel.items
		
		if cellModel.form.itemType == .disclosureSimpleExpandable {
//			subCellModelOne = EvaluationItem(literal: Presentation.male)
//			subCellModelTwo = EvaluationItem(literal: Presentation.female)
			subCellModelOne = cellModel.items[0]
			subCellModelTwo = cellModel.items[1]
		}
		
		/*
		if cellModel.form.itemType == .disclosureControlExpandable {
			cellModel.subCellsCount = theitems.count
			print("this expandable cell has \(theitems.count) items")
			
			if(cellModel.subCellsCount == 1) {
				subCellModelOne = theitems[0]
				self.subLabelOne?.text = subCellModelOne?.title
				self.subLabelOne?.font = CVDStyle.style.currentFont
			}
			
			if(cellModel.subCellsCount == 2) {
				subCellModelOne = theitems[0]
				subCellModelTwo = theitems[1]
				self.subLabelOne?.text = subCellModelOne?.title
				self.subLabelTwo?.text = subCellModelTwo?.title
				self.subLabelOne?.font = CVDStyle.style.currentFont
				self.subLabelOne?.font = CVDStyle.style.currentFont
			}
			
			if(cellModel.subCellsCount == 3) {
				subCellModelOne = theitems[0]
				subCellModelTwo = theitems[1]
				subCellModelThree = theitems[2]
				self.subLabelOne?.text = subCellModelOne?.title
				self.subLabelTwo?.text = subCellModelTwo?.title
				self.subLabelThree?.text = subCellModelThree?.title
				self.subLabelOne?.font = CVDStyle.style.currentFont
				self.subLabelTwo?.font = CVDStyle.style.currentFont
				self.subLabelThree?.font = CVDStyle.style.currentFont
			}
		}
		*/
		
		if cellModel.form.itemType == .integerRightExpandable {
			cellModel.subCellsCount = theitems.count
			//print("this expandable cell has \(theitems.count) items")
			
			subCellModelOne = EvaluationItem(literal: Presentation.urineNaMeql)
			
			subCellModelTwo = EvaluationItem(literal: Presentation.serumOsmolality)
			
			subCellModelThree = EvaluationItem(literal: Presentation.urineOsmolality)
			
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelTwo?.text = subCellModelTwo?.title
			self.subLabelThree?.text = subCellModelThree?.title
			
		}
		
		if let textInt = cellModel.storedValue?.value, let value = Int(textInt), value > 0 {
			if cellModel.form.itemType == .sbpExpandable {
				cellModel.subCellsCount = theitems.count
				if value > 130 {
					subCellSbpModelOne = EvaluationItem(literal: Presentation.bioSBPNumber130)
					sbpInfoLabel?.text = "Value is greater than 130. Please give additional details."
				} else if value < 90 {
					sbpInfoLabel?.text = "Value is less than 90. Please give additional details."
					subCellSbpModelOne = EvaluationItem(literal: Presentation.bioSBPNumber90)
				}
				sbpSubLabel?.text = subCellSbpModelOne?.title
				sbpSubTextField.textColor = CVDStyle.style.rightFieldColor
			} else if cellModel.form.itemType == .dbpExpandable {
				cellModel.subCellsCount = theitems.count
				subCellDbpModelOne = EvaluationItem(literal: Presentation.bioDBPNumber90)
				dbpSubLabel?.text = subCellDbpModelOne?.title
				dbpInfoLabel?.text = "Value is greater than 90. Please give additional details"
				dbpSubTextField.textColor = CVDStyle.style.rightFieldColor
			}
		}
		
		updateCell(model: self.cellModel)
		
	}
	
	
	func updateCell(model: EvaluationItem) {
		
		// For cells with multiple textFields in it.
		if textFieldCollection != nil {
			if self.isKind(of: DisclosureControlInputCellExpandable.self) {return}
			for textFieldFomCollection in textFieldCollection {
				
				textFieldFomCollection.text = model.storedValue?.value
				
				if [.textLeft, .integerLeft, .decimalLeft, .mail, .password].contains(where: { $0 == model.form.itemType }) {
					textFieldFomCollection.textColor = CVDStyle.style.leftFieldColor
				} else {
					textFieldFomCollection.textColor = CVDStyle.style.rightFieldColor
				}
			}
			
		} else {
			self.textField?.text = nil
			self.textField?.text = model.storedValue?.value

			if [.textLeft, .integerLeft, .decimalLeft, .mail, .password].contains(where: { $0 == model.form.itemType })  {
				self.textField?.textColor = CVDStyle.style.leftFieldColor
			} else {
				self.textField?.textColor = CVDStyle.style.rightFieldColor
			}
		}
	}
	
	
	
	// MARK: - KBNumberPad Delegate
	
	func onDoneClicked(numberPad: KBNumberPad) {
		self.delegate?.keyboardReturnDidPress(model: self.cellModel)
	}
	
	
	func onNextClicked(numberPad: KBNumberPad) {
		self.delegate?.keyboardReturnDidPress(model: self.cellModel)
	}
	
	
	
	// MARK: - UITextField delegates
	
	func textFieldDidEndEditing(_ textField: UITextField) {
		if let supperView = self.superview as? UITableView, supperView.isResetting {
			self.cellModel.storedValue?.value = nil
			return
		}

		if textField.oneOf(other: subTextFieldOne ?? UITextField(),
										  subTextFieldTwo ?? UITextField(),
										  subTextFieldThree ?? UITextField(),
										  sbpSubTextField ?? UITextField(),
										  dbpSubTextField ?? UITextField()) { return }

		let strInput = textField.text
		
		do {
			try cellModel.storedValue?.validateInput(inputText: strInput!)
			self.cellModel.storedValue?.value = strInput!.count > 0 ? strInput : nil
			
			if (cellModel.form.itemType == .integerRightExpandable && textField == self.textField) {
				
				//print("input value - \(String(describing: intInput))")
				if let strNumber = strInput, let intInput = Int(strNumber), intInput < 130 {
					//print("should be expanded")
					cellModel.isExpanded = true
					self.delegate?.evaluationFieldTogglesDropDown()
					
				}
				else {
					//print("should not be expanded")
					cellModel.isExpanded = false
					self.delegate?.evaluationFieldTogglesDropDown()
				}
				
			} else if cellModel.form.itemType == .sbpExpandable && textField == self.textField {
				
				if let strNumber = strInput, let intInput = Int(strNumber), (intInput > 130 || intInput < 90) {
					cellModel.isExpanded = true
				}
				else {
					cellModel.isExpanded = false
				}
				setupCell()
				// update table view
				self.delegate?.evaluationFieldTogglesDropDown()
				
			} else if cellModel.form.itemType == .dbpExpandable && textField == self.textField {
				
				if let strNumber = strInput, let intInput = Int(strNumber), intInput > 80 {
					cellModel.isExpanded = true
				}
				else {
					cellModel.isExpanded = false
				}
				setupCell()
				// update table view
				self.delegate?.evaluationFieldTogglesDropDown()
			}
			
		} catch InputError.incorrectInput {
			markInvalidInput()
			self.delegate?.evaluationValueDidNotValidate(model: cellModel,
				message: "Entered text into field \(cellModel.title) contains incorrect symbols".localized,
				description: "Please remove them and try again.")
			updateCell(model:  self.cellModel)
			
		} catch InputError.toLong {
			markInvalidInput()
			self.delegate?.evaluationValueDidNotValidate(model: cellModel,
			    message: "Entered text into field \(cellModel.title) is too long".localized,
			    description: "Please shorten it and try again.")
			updateCell(model: self.cellModel)
			
		} catch InputError.outOfBounds {
			markInvalidInput()
			self.delegate?.evaluationValueDidNotValidate(model: cellModel,
				message: "Value for “\(cellModel.title)” exceeds the limits",
				description: "Please, use range from \(cellModel.storedValue!.minValue!) to \(cellModel.storedValue!.maxValue!)")
			self.cellModel.storedValue?.value = strInput
			
		} catch InputError.emptyInput {
			markInvalidInput()
			if self.cellModel.storedValue?.value != nil {
				self.delegate?.evaluationValueDidNotValidate(model: cellModel,
				message: "Field \(cellModel.title) cannot be empty",
				description: "Please fill in this field.")
			}
			self.cellModel.storedValue?.value = nil
		} catch {
			()
		}
		
	}
	
	
	func textFieldDidBeginEditing(_ textField: UITextField) {
		self.delegate?.evaluationFieldDidBeginEditing(textField, model: self.cellModel)
		drawFieldWithDefaultColor()
	}
	
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		self.delegate?.keyboardReturnDidPress(model: self.cellModel)
		
		return true
	}
	
	
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		self.delegate?.evaluationValueDidEnter(textField, model: self.cellModel)
		return true
	}
	
	
	func markInvalidInput() {
		self.titleLabel?.textColor = UIColor(palette: ColorPalette.red)
		self.textField?.textColor = UIColor(palette: ColorPalette.red)
	}
	
	
	func drawFieldWithDefaultColor() {
		self.titleLabel?.textColor = CVDStyle.style.defaultFontColor
		
		if [.textLeft, .integerLeft, .decimalLeft, .mail, .password].contains(where: { $0 == cellModel.form.itemType }) {
			self.textField?.textColor = CVDStyle.style.leftFieldColor
		} else {
			self.textField?.textColor = CVDStyle.style.rightFieldColor
		}
	}
}

// Simple Cells ------------------------------------------

class SeparatorCell: GeneratedCell {
	override func setupCell() {
		super.setupCell()
		self.titleLabel?.textColor = CVDStyle.style.subtitleColor
		self.titleLabel?.font = CVDStyle.style.currentFont
	}
}


// Check Cells ------------------------------------------

class CheckBoxCell: GeneratedCell {
	
	var isCheckedButton: Bool {
		get {
			if (cellModel.storedValue == nil){
				//print("!!!!!!!!!!!!! ffffuuuuuuuuuuu ------ ")
				return false
			}
			return cellModel.storedValue!.isChecked
		}
		set {
			if (cellModel.storedValue == nil){
				//print("!!!!!!!!!!!!! set ffffuuuuuuuuuuu ------ ")
				return
			}

			cellModel.storedValue!.isChecked = newValue
			updateCell(model: cellModel)

			if !newValue {
				resetSubItem(item: cellModel)
			}
		}
	}

	func resetSubItem(item: EvaluationItem) {
		item.storedValue?.isChecked = false
		item.storedValue?.radioGroup?.selectedRadioItem = nil
		
		for subItem in item.items {
			resetSubItem(item: subItem)
		}
	}
	
	override func updateCell(model: EvaluationItem) {
		super.updateCell(model: model)
		self.icon?.image = isCheckedButton ? UIImage(named: "checkDown") : UIImage(named: "checkUp")
		self.icon?.highlightedImage = isCheckedButton ? UIImage(named: "checkDownPressed") : UIImage(named: "checkUpPressed")
	}
	
	@IBAction func pressActionDown(_ sender: UIButton) {
		self.icon?.isHighlighted = true
	}
	
	@IBAction func pressActionUp(_ sender: UIButton) {
		self.icon?.isHighlighted = false
		isCheckedButton = !isCheckedButton
	}
	
	@IBAction func pressActionOutside(_ sender: UIButton) {
		self.icon?.isHighlighted = false
	}
	
}


class DisclosureControlCell: CheckBoxCell {
	
	override func setupCell() {
		super.setupCell()
		self.titleLabel?.textColor = CVDStyle.style.purpleColor
		self.disclosureIcon?.image =  UIImage(named: "nextGrayIcon")
		//self.disclosureIcon?.image = isCheckedButton ?  UIImage(named: "nextGrayIcon") : UIImage(named: "nextGrayIconDisabled")
	}
}

class DisclosureControlInputCellExpandable: DisclosureControlCellExpandable {

	override func setupCell() {
		super.setupCell()

		let theitems = cellModel.items
		self.textFieldCollection.forEach {
			$0.textColor = CVDStyle.style.rightFieldColor
			self.resetField(textField: $0)
		}

		if(cellModel.subCellsCount == 1) {
			subCellModelOne = theitems[0]
			self.subTextFieldOne?.placeholder = subCellModelOne?.placeHolder
			self.subTextFieldOne?.font = CVDStyle.style.currentFont
			if subCellModelOne?.storedValue?.isFilled == true {
				updateCellOne()
			}
		}

		if(cellModel.subCellsCount == 2) {
			subCellModelOne = theitems[0]
			subCellModelTwo = theitems[1]
			self.subTextFieldOne?.placeholder = subCellModelOne?.placeHolder
			self.subTextFieldTwo?.placeholder = subCellModelTwo?.placeHolder

			self.subTextFieldOne?.font = CVDStyle.style.currentFont
			self.subTextFieldTwo?.font = CVDStyle.style.currentFont

			if subCellModelOne?.storedValue?.isFilled == true {
				updateCellOne()
			}
			if subCellModelTwo?.storedValue?.isFilled == true {
				updateCellTwo()
			}

		}

		if(cellModel.subCellsCount == 3) {
			subCellModelOne = theitems[0]
			subCellModelTwo = theitems[1]
			subCellModelThree = theitems[2]
			self.subTextFieldOne?.placeholder = subCellModelOne?.placeHolder
			self.subTextFieldTwo?.placeholder = subCellModelTwo?.placeHolder
			self.subTextFieldThree?.placeholder = subCellModelThree?.placeHolder
			self.subTextFieldOne?.font = CVDStyle.style.currentFont
			self.subTextFieldTwo?.font = CVDStyle.style.currentFont
			self.subTextFieldThree?.font = CVDStyle.style.currentFont

			if subCellModelOne?.storedValue?.isFilled == true {
				updateCellOne()
			}
			if subCellModelTwo?.storedValue?.isFilled == true {
				updateCellTwo()
			}
			if subCellModelThree?.storedValue?.isFilled == true {
				updateCellThree()
			}
		}

		for i in 0..<theitems.count {
			let field = textFieldCollection[i]
			let model = theitems[i]
			field.font = CVDStyle.style.currentFont
			field.returnKeyType = .next
			field.placeholder = model.storedValue?.placeholder
			field.text = model.storedValue?.value

			if model.form.itemType == .integerRight || model.form.itemType == .integerLeft {
				numberPad = KBNumberPad(padType: .Integer, returnType: .Next)
				numberPad?.delegate = self
				field.inputView = numberPad
			}
			else if model.form.itemType == .decimalRight || model.form.itemType == .decimalLeft {
				numberPad = KBNumberPad(padType: .Decimal, returnType: .Next)
				numberPad?.delegate = self
				field.inputView = numberPad
			}
		}
	}

	override func updateCellOne() {
		self.subTextFieldOne?.text = subCellModelOne?.storedValue?.value
	}

	override func updateCellTwo() {
		self.subTextFieldTwo?.text = subCellModelTwo?.storedValue?.value
	}

	override func updateCellThree() {
		self.subTextFieldThree?.text = subCellModelThree?.storedValue?.value
	}

	func markInvalidInput(textField: UITextField) {
		var label: UILabel!
		switch textField {
		case subTextFieldOne:
			label = subLabelOne
		case subTextFieldTwo:
			label = subLabelTwo
		case subTextFieldThree:
			label = subLabelThree
		default: ()
		}
		label.textColor = UIColor(palette: ColorPalette.red)
	}

	func resetField(textField: UITextField) {
		var label: UILabel!
		switch textField {
		case subTextFieldOne:
			label = subLabelOne
		case subTextFieldTwo:
			label = subLabelTwo
		case subTextFieldThree:
			label = subLabelThree
		default: ()
		}
		label.textColor = CVDStyle.style.defaultFontColor
	}

	override func textFieldDidBeginEditing(_ textField: UITextField) {
		resetField(textField: textField)
	}

	override func textFieldDidEndEditing(_ textField: UITextField) {
		var cellModel: EvaluationItem!
		switch textField {
		case subTextFieldOne:
			cellModel = subCellModelOne
		case subTextFieldTwo:
			cellModel = subCellModelTwo
		case subTextFieldThree:
			cellModel = subCellModelThree

		default: ()
		}

		if let supperView = self.superview as? UITableView, supperView.isResetting {
			cellModel.storedValue?.value = nil
			return
		}

		let strInput = textField.text

		do {
			try cellModel.storedValue?.validateInput(inputText: strInput!)
			cellModel.storedValue?.value = strInput!.count > 0 ? strInput : nil
		} catch InputError.incorrectInput {
			markInvalidInput(textField: textField)
			self.delegate?.evaluationValueDidNotValidate(model: cellModel,
																		message: "Entered text into field \(cellModel.title) contains incorrect symbols".localized,
																		description: "Please remove them and try again.")
			updateCell(model: cellModel)

		} catch InputError.toLong {
			markInvalidInput(textField: textField)
			self.delegate?.evaluationValueDidNotValidate(model: cellModel,
																		message: "Entered text into field \(cellModel.title) is too long".localized,
																		description: "Please shorten it and try again.")
			updateCell(model: cellModel)

		} catch InputError.outOfBounds {
			markInvalidInput(textField: textField)
			self.delegate?.evaluationValueDidNotValidate(model: cellModel,
																		message: "Value for “\(cellModel.title)” exceeds the limits",
				description: "Please, use range from \(cellModel.storedValue!.minValue!) to \(cellModel.storedValue!.maxValue!)")
			cellModel.storedValue?.value = strInput

		} catch InputError.emptyInput {
			markInvalidInput(textField: textField)
			if cellModel.storedValue?.value != nil {
				self.delegate?.evaluationValueDidNotValidate(model: cellModel,
																			message: "Field \(cellModel.title) cannot be empty",
					description: "Please fill in this field.")
			}
			cellModel.storedValue?.value = nil
		} catch {
			()
		}
	}

	override func onDoneClicked(numberPad: KBNumberPad) {
		numberPad.textInput?.resignFirstResponder()
	}

	override func onNextClicked(numberPad: KBNumberPad) {
		numberPad.textInput?.resignFirstResponder()
	}
}

// GeneratedCell { //
class DisclosureControlCellExpandable:  DisclosureControlCell {
	
	var isCheckedButtonSubOne: Bool {
		get {
			return subCellModelOne!.storedValue!.isChecked
		}
		set {
			subCellModelOne?.storedValue!.isChecked = newValue
			updateCellOne()
			// self.delegate?.evaluationValueDidChange(model: cellModel)
			//print("check box checked")
		}
	}
	
	var isCheckedButtonSubTwo: Bool {
		get {
			return subCellModelTwo!.storedValue!.isChecked // false // cellModel.storedValue!.isChecked
		}
		set {
			subCellModelTwo?.storedValue!.isChecked = newValue
			updateCellTwo()
			// self.delegate?.evaluationValueDidChange(model: cellModel)
			//print("check box checked")
		}
	}
	
	var isCheckedButtonSubThree: Bool {
		get {
			return subCellModelThree!.storedValue!.isChecked // false // cellModel.storedValue!.isChecked
		}
		set {
			subCellModelThree?.storedValue!.isChecked = newValue
			updateCellThree()
			// self.delegate?.evaluationValueDidChange(model: cellModel)
			//print("check box checked")
		}
	}
	
	
	override func setupCell() {
		//print("Override setup cell called")
		super.setupCell()
		
		if cellModel.isExpanded {
			self.disclosureIcon?.image =  UIImage(named: "upGrayIcon")
		}
		else {
			self.disclosureIcon?.image =  UIImage(named: "downGrayIcon")
		}
		
		let theitems = cellModel.items
		
		cellModel.subCellsCount = theitems.count
		//print("this expandable cell has \(theitems.count) items")
		// FIXME: Phillip's fix Stored value
		//print("checked? \(theitems[0].storedValue?.isChecked)")
		
		if(cellModel.subCellsCount == 1) {
			subCellModelOne = theitems[0]
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelOne?.font = CVDStyle.style.currentFont
			
			if subCellModelOne?.storedValue?.isChecked == true {
				updateCellOne()
			}
		}
		
		if(cellModel.subCellsCount == 2) {
			subCellModelOne = theitems[0]
			subCellModelTwo = theitems[1]
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelTwo?.text = subCellModelTwo?.title
			
			self.subLabelOne?.font = CVDStyle.style.currentFont
			self.subLabelOne?.font = CVDStyle.style.currentFont
			
			if subCellModelOne?.storedValue?.isChecked == true {
				updateCellOne()
			}
			if subCellModelTwo?.storedValue?.isChecked == true {
				updateCellTwo()
			}
			
		}
		
		if(cellModel.subCellsCount == 3) {
			subCellModelOne = theitems[0]
			subCellModelTwo = theitems[1]
			subCellModelThree = theitems[2]
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelTwo?.text = subCellModelTwo?.title
			self.subLabelThree?.text = subCellModelThree?.title
			self.subLabelOne?.font = CVDStyle.style.currentFont
			self.subLabelTwo?.font = CVDStyle.style.currentFont
			self.subLabelThree?.font = CVDStyle.style.currentFont
			
			if subCellModelOne?.storedValue?.isChecked == true {
				updateCellOne()
			}
			if subCellModelTwo?.storedValue?.isChecked == true {
				updateCellTwo()
			}
			if subCellModelThree?.storedValue?.isChecked == true {
				updateCellThree()
			}
		}

	}
	
	func updateDisclosureIcon() {
		if cellModel.isExpanded {
			self.disclosureIcon?.image =  UIImage(named: "upGrayIcon")
		}
		else {
			self.disclosureIcon?.image =  UIImage(named: "downGrayIcon")
		}
	}
	
	
	func updateCellOne(){
		self.iconOne?.image = isCheckedButtonSubOne ? UIImage(named: "checkDown") : UIImage(named: "checkUp")
		self.iconOne?.highlightedImage = isCheckedButtonSubOne ? UIImage(named: "checkDownPressed") : UIImage(named: "checkUpPressed")
	}
	
	
	func updateCellTwo(){
		self.iconTwo?.image = isCheckedButtonSubTwo ? UIImage(named: "checkDown") : UIImage(named: "checkUp")
		self.iconTwo?.highlightedImage = isCheckedButtonSubTwo ? UIImage(named: "checkDownPressed") : UIImage(named: "checkUpPressed")
	}
	
	func updateCellThree(){
		self.iconThree?.image = isCheckedButtonSubThree ? UIImage(named: "checkDown") : UIImage(named: "checkUp")
		self.iconThree?.highlightedImage = isCheckedButtonSubThree ? UIImage(named: "checkDownPressed") : UIImage(named: "checkUpPressed")
	}
	
	
	
	@IBAction func pressActionDownOne(_ sender: UIButton) {
		self.iconOne?.isHighlighted = true
	}
	
	@IBAction func pressActionUpOne(_ sender: UIButton) {
		self.iconOne?.isHighlighted = false
		isCheckedButtonSubOne = !isCheckedButtonSubOne
	}
	
	@IBAction func pressActionOutsideOne(_ sender: UIButton) {
		self.iconOne?.isHighlighted = false
	}
	
	
	
	@IBAction func pressActionDownTwo(_ sender: UIButton) {
		self.iconTwo?.isHighlighted = true
	}
	
	@IBAction func pressActionUpTwo(_ sender: UIButton) {
		self.iconTwo?.isHighlighted = false
		isCheckedButtonSubTwo = !isCheckedButtonSubTwo
	}
	
	@IBAction func pressActionOutsideTwo(_ sender: UIButton) {
		self.iconTwo?.isHighlighted = false
	}
	
	
	
	@IBAction func pressActionDownThree(_ sender: UIButton) {
		self.iconThree?.isHighlighted = true
	}
	
	@IBAction func pressActionUpThree(_ sender: UIButton) {
		self.iconThree?.isHighlighted = false
		isCheckedButtonSubThree = !isCheckedButtonSubThree
	}
	
	@IBAction func pressActionOutsideThree(_ sender: UIButton) {
		self.iconThree?.isHighlighted = false
	}
	
	
	
	//var subCellModelOne = EvaluationItem(literal: Presentation.malaiseFatigue)
	/*
	override func setupCell() {
		print("expandable generated cell --- setupCell called")
		super.setupCell()
		self.titleLabel?.textColor = CVDStyle.style.purpleColor
		self.disclosureIcon?.image =  UIImage(named: "nextGrayIcon")
		
		/*
		if (subCellModelOne != nil) {
			self.subLabelOne?.text = subCellModelOne?.title
		}
	
		if (subCellModelTwo != nil) {
			self.subLabelTwo?.text = subCellModelTwo?.title
		}
	
		if (subCellModelThree != nil) {
			self.subLabelThree?.text = subCellModelThree?.title
		}
	
		//]cellModel.subCellsCount
		
		if(cellModel.subCellsCount == 1) {
		   self.subLabelOne?.text = subCellModelOne?.title
			//subCellModelOne = theitems[0]
			//self.subLabelOne?.text = theitems[0].title
		}

		
		if(cellModel.subCellsCount == 2) {
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelTwo?.text = subCellModelTwo?.title
		}

		if(cellModel.subCellsCount == 3) {
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelTwo?.text = subCellModelTwo?.title
			self.subLabelThree?.text = subCellModelThree?.title
		}
		*/
		
		let theitems = cellModel.items
		
		if(cellModel.subCellsCount == 1) {
			subCellModelOne = theitems[0]
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelOne?.font = CVDStyle.style.currentFont
		}
		
		if(cellModel.subCellsCount == 2) {
			subCellModelOne = theitems[0]
			subCellModelTwo = theitems[1]
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelTwo?.text = subCellModelTwo?.title
			self.subLabelOne?.font = CVDStyle.style.currentFont
			self.subLabelOne?.font = CVDStyle.style.currentFont
		}
		
		if(cellModel.subCellsCount == 3) {
			subCellModelOne = theitems[0]
			subCellModelTwo = theitems[1]
			subCellModelThree = theitems[2]
		}
		
	}
	
	
	
	override func layoutSubviews() {
		super.layoutSubviews()
		//self.subLabelOne?.text = "fuck" // subCellModelOne.title
		
		let theitems = cellModel.items
		
		if(cellModel.subCellsCount == 1) {
			subCellModelOne = theitems[0]
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelOne?.font = CVDStyle.style.currentFont
		}
		
		if(cellModel.subCellsCount == 2) {
			subCellModelOne = theitems[0]
			subCellModelTwo = theitems[1]
			self.subLabelOne?.text = subCellModelOne?.title
			self.subLabelTwo?.text = subCellModelTwo?.title
			self.subLabelOne?.font = CVDStyle.style.currentFont
			self.subLabelOne?.font = CVDStyle.style.currentFont
		}
		
		if(cellModel.subCellsCount == 3) {
			subCellModelOne = theitems[0]
			subCellModelTwo = theitems[1]
			subCellModelThree = theitems[2]
		}
		
	}
	*/
}


/*
class DisclosureControlCell: CheckBoxCell {

	override func setupCell() {
		super.setupCell()
		self.titleLabel?.textColor = CVDStyle.style.purpleColor
		// isCheckedButton = true;
		self.icon?.isHidden = true
		self.icon?.isUserInteractionEnabled = false
		self.disclosureIcon?.image = UIImage(named: "nextGrayIcon") // isCheckedButton ?  UIImage(named: "nextGrayIcon") : UIImage(named: "nextGrayIconDisabled")
	}
}
*/

class DisclosureControlCellWithCheck: CheckBoxCell {
	
	override func setupCell() {
		super.setupCell()
		self.titleLabel?.textColor = CVDStyle.style.purpleColor
		// isCheckedButton = true;
		//self.icon?.isHidden = true
		//self.icon?.isUserInteractionEnabled = false
		self.disclosureIcon?.image = isCheckedButton ?  UIImage(named: "nextGrayIcon") : UIImage(named: "nextGrayIconDisabled")
	}
}

class WeatherDisclosureCell: GeneratedCell {
	override func setupCell() {
		super.setupCell()
		
		if cellModel.form.status == .valued {
			self.icon?.image = UIImage(named: "FullIcon")
		} else if cellModel.form.status == .viewed {
			self.icon?.image = UIImage(named: "HalfIcon")
		} else if cellModel.form.status == .locked {
			self.icon?.image = UIImage(named: "lock")
		} else {
			self.icon?.image = nil
		}
	}
}


// Radio Cells ------------------------------------------

class RadioButtonCell: GeneratedCell {
	
	var isCheckedButton: Bool {
		get {
			return cellModel.storedValue?.radioGroup!.selectedRadioItem == cellModel.identifier
		}
		set {
			cellModel.storedValue?.radioGroup!.selectItem(id: cellModel.identifier)
			updateCell(model: cellModel)
			self.delegate?.evaluationValueDidChange(model: cellModel)
		}
	}
	
	override func updateCell(model: EvaluationItem) {
		super.updateCell(model: model)

		self.icon?.image = isCheckedButton ? UIImage(named: "radioDown") : UIImage(named: "radioUp")
		self.icon?.highlightedImage = isCheckedButton ? UIImage(named: "radioDownPressed") : UIImage(named: "radioUpPressed")

		if cellModel.storedValue?.reopenedFromSave == true && cellModel.storedValue?.isChecked == true {
			guard let loop = cellModel.storedValue?.looped else {
				return
			}
			cellModel.storedValue?.looped += 1;
			if loop == 1 {
				isCheckedButton = true
				cellModel.storedValue?.reopenedFromSave = false
			}
		}
	}
	
	@IBAction func pressActionDown(_ sender: UIButton) {
		self.icon?.isHighlighted = true
	}
	
	@IBAction func pressActionUp(_ sender: UIButton) {
		self.icon?.isHighlighted = false
		isCheckedButton = !isCheckedButton

	}
	
	@IBAction func pressActionOutside(_ sender: UIButton) {
		self.icon?.isHighlighted = false

	}
}



class DisclosureSimpleCellExpandable: GeneratedCell { // GeneratedCell {
	
	
	var isCheckedButtonOne: Bool {
		get {
			return subCellModelOne!.storedValue?.radioGroup!.selectedRadioItem == subCellModelOne!.identifier
//			return cellModel.storedValue?.value == subCellModelOne?.identifier
		}
		set {
			subCellModelOne?.storedValue?.radioGroup!.selectItem(id: (subCellModelOne?.identifier)!)
			cellModel.storedValue?.value = subCellModelOne?.identifier
//			updateCellOne()
			self.delegate?.evaluationValueDidChange(model: subCellModelOne!)
		}
	}
	
	var isCheckedButtonTwo: Bool {
		get {
			return subCellModelTwo!.storedValue?.radioGroup!.selectedRadioItem == subCellModelTwo!.identifier
//			return cellModel.storedValue?.value == subCellModelTwo?.identifier
		}
		set {
			subCellModelTwo?.storedValue?.radioGroup!.selectItem(id: (subCellModelTwo?.identifier)!)
			cellModel.storedValue?.value = subCellModelTwo?.identifier
//			updateCellTwo()
			self.delegate?.evaluationValueDidChange(model: subCellModelTwo!)
		}
	}
	
	func updateCellOne() {
		//super.updateCell()
		print("update cell 1 called")
		self.iconOne?.image = isCheckedButtonOne ? UIImage(named: "radioDown") : UIImage(named: "radioUp")
		self.iconOne?.highlightedImage = isCheckedButtonOne ? UIImage(named: "radioDownPressed") : UIImage(named: "radioUpPressed")
		if(isCheckedButtonOne) {
			self.titleLabel?.text = "Male"
		}
	}
	
	func updateCellTwo() {
		//super.updateCell()
		print("update cell 2 called")
		self.iconTwo?.image = isCheckedButtonTwo ? UIImage(named: "radioDown") : UIImage(named: "radioUp")
		self.iconTwo?.highlightedImage = isCheckedButtonTwo ? UIImage(named: "radioDownPressed") : UIImage(named: "radioUpPressed")
		if(isCheckedButtonTwo) {
			self.titleLabel?.text = "Female"
		}
	}


	override func updateCell(model: EvaluationItem) {
		//super.updateCell()
		
		self.iconOne?.image = isCheckedButtonOne ? UIImage(named: "radioDown") : UIImage(named: "radioUp")
		self.iconOne?.highlightedImage = isCheckedButtonOne ? UIImage(named: "radioDownPressed") : UIImage(named: "radioUpPressed")

		self.iconTwo?.image = isCheckedButtonTwo ? UIImage(named: "radioDown") : UIImage(named: "radioUp")
		self.iconTwo?.highlightedImage = isCheckedButtonTwo ? UIImage(named: "radioDownPressed") : UIImage(named: "radioUpPressed")
		
		// FIXME: Here here hrere for gender radio button
//		if isCheckedButtonOne {
//			updateCellOne()
//		}
//		if isCheckedButtonTwo {
//			updateCellTwo()
//		}
//		print("is check button one \(isCheckedButtonOne) and check button 2 \(isCheckedButtonTwo)")
		
	}
	
	
	@IBAction func pressActionDownOne(_ sender: UIButton) {
		//print("one pressed down")
		self.iconOne?.isHighlighted = true
	}
	
	@IBAction func pressActionDownTwo(_ sender: UIButton) {
		//print("two pressed down")
		self.iconTwo?.isHighlighted = true
	}
	
	@IBAction func pressActionUpOne(_ sender: UIButton) {
		//print("one pressed up")
		self.iconOne?.isHighlighted = false
		isCheckedButtonOne = !isCheckedButtonOne
		//isCheckedButtonTwo = false
		
		//isCheckedButtonOne = !isCheckedButtonOne
		if(isCheckedButtonOne){
			self.iconTwo?.image = UIImage(named: "radioUp")
			//self.iconTwo?.isHighlighted = false
			//isCheckedButtonTwo = false
			//self.iconOne?.isHighlighted = true
		}
	/*	else {
			self.iconOne?.isHighlighted = false
		}
	*/
		//isCheckedButtonTwo = false
	}
	
	@IBAction func pressActionUpTwo(_ sender: UIButton) {
		//print("two pressed up")
		self.iconTwo?.isHighlighted = false
		isCheckedButtonTwo = !isCheckedButtonTwo
		//isCheckedButtonOne = false
		// isCheckedButtonOne = false
		
		//isCheckedButtonTwo = !isCheckedButtonTwo
		if(isCheckedButtonTwo){
			self.iconOne?.image = UIImage(named: "radioUp")
			//self.iconOne?.isHighlighted = false
			//isCheckedButtonOne = false
			//self.iconTwo?.isHighlighted = true
		}/*
		else {
			
			self.iconTwo?.isHighlighted = false
		}
	*/
	}
	
	@IBAction func pressActionOutsideOne(_ sender: UIButton) {
		self.iconOne?.isHighlighted = false
	}
	
	@IBAction func pressActionOutsideTwo(_ sender: UIButton) {
		self.iconTwo?.isHighlighted = false
	}
}

class DisclosureCellInputExpandable: GeneratedCell {
	
	
	
}



class RightIntegerCellExpandable: GeneratedCell {
	
  /*
	subCellModelOne = EvaluationItem(literal: Presentation.urineNaMeql)
	
	var subCellModelTwo = EvaluationItem(literal: Presentation.serumOsmolality)
	
	var subCellModelThree = EvaluationItem(literal: Presentation.urineOsmolality)
	*/
	
	override func updateCell(model: EvaluationItem) {
		super.updateCell(model: model)
		self.subLabelOne?.text = subCellModelOne?.title
//		self.subLabelTwo?.text = subCellModelTwo.title
//		self.subLabelThree?.text = subCellModelThree.title
		//self.textField?.delegate = self
		
		let theitems = cellModel.items
		print("items size \(theitems.count)")
		
		for i in theitems {
			let t = i.title
			print("title - \(t)")
		}
		
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
//		self.subLabelOne?.text = subCellModelOne.title
//		self.subLabelTwo?.text = subCellModelTwo.title
//		self.subLabelThree?.text = subCellModelThree.title
		//self.textField?.delegate = self
		
		let theitems = cellModel.items
		print("items size \(theitems.count)")
		
		for i in theitems {
			let t = i.title
			print("title - \(t)")
		}
	}
	override func textFieldDidEndEditing(_ textField: UITextField) {
		super.textFieldDidEndEditing(textField)
		//print("------does this get called?")
		
		let strInput = textField.text
		
		let intInput = Int(strInput!)
		
		//print("input value - \(String(describing: intInput))")
		if (intInput! < 130) {
			//print("should be expanded")
			cellModel.isExpanded = true
			self.delegate?.evaluationFieldTogglesDropDown()
			
		}
		else {
			//print("should not be expanded")
			cellModel.isExpanded = false
			self.delegate?.evaluationFieldTogglesDropDown()
		}
	}
	
	override func textFieldDidBeginEditing(_ textField: UITextField) {
		//print("-dis called?")
		//self.delegate?.evaluationFieldDidBeginEditing(textField, model: self.cellModel)
		//drawFieldWithDefaultColor()
	}
	
	/*
	override func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		
		print("-dis called?")
		//textField.resignFirstResponder()
		//self.delegate?.keyboardReturnDidPress(model: self.cellModel)
		
		return true
	}
	*/
}

//class SBPDBPCellExpandable: GeneratedCell {
//
//  /*
//	subCellModelOne = EvaluationItem(literal: Presentation.urineNaMeql)
//
//	var subCellModelTwo = EvaluationItem(literal: Presentation.serumOsmolality)
//
//	var subCellModelThree = EvaluationItem(literal: Presentation.urineOsmolality)
//	*/
//
//	override func updateCell(model: EvaluationItem) {
//		super.updateCell(model: model)
//		self.sbpdbpSubLabel?.text = subCellSbpDbpModelOne?.title
////		self.subLabelTwo?.text = subCellModelTwo.title
////		self.subLabelThree?.text = subCellModelThree.title
//		//self.textField?.delegate = self
//
//		let theitems = cellModel.items
//		print("items size \(theitems.count)")
//
//		for i in theitems {
//			let t = i.title
//			print("title - \(t)")
//		}
//
//	}
//
//	override func layoutSubviews() {
//		super.layoutSubviews()
//
////		self.subLabelOne?.text = subCellModelOne.title
////		self.subLabelTwo?.text = subCellModelTwo.title
////		self.subLabelThree?.text = subCellModelThree.title
//		//self.textField?.delegate = self
//
//		let theitems = cellModel.items
//		print("items size \(theitems.count)")
//
//		for i in theitems {
//			let t = i.title
//			print("title - \(t)")
//		}
//	}
//	override func textFieldDidEndEditing(_ textField: UITextField) {
//		super.textFieldDidEndEditing(textField)
//		//print("------does this get called?")
//
//		//print("input value - \(String(describing: intInput))")
//		if let strInput = textField.text, let intInput = Int(strInput), intInput > 130 {
//			//print("should be expanded")
//			cellModel.isExpanded = true
//			self.delegate?.evaluationFieldTogglesDropDown()
//
//		}
//		else {
//			//print("should not be expanded")
//			cellModel.isExpanded = false
//			self.delegate?.evaluationFieldTogglesDropDown()
//		}
//	}
//
//	override func textFieldDidBeginEditing(_ textField: UITextField) {
//		//print("-dis called?")
//		//self.delegate?.evaluationFieldDidBeginEditing(textField, model: self.cellModel)
//		//drawFieldWithDefaultColor()
//	}
//
//	/*
//	override func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//
//		print("-dis called?")
//		//textField.resignFirstResponder()
//		//self.delegate?.keyboardReturnDidPress(model: self.cellModel)
//
//		return true
//	}
//	*/
//}


class DisclosureRadioCell: RadioButtonCell {}

// Simple Cells --------------------------
class LabelCell: GeneratedCell {
	override func setupCell() {
		super.setupCell()
//		self.titleLabel?.textColor = CVDStyle.style.subtitleColor
		self.titleLabel?.font = UIFont(name: "OpenSans-Bold", size: CVDStyle.style.currentFont.pointSize)!
	}
}

class SimpleCell: GeneratedCell {}
class DisclosureSimpleCell: GeneratedCell {}

class DisclosureSimpleCellPurple: GeneratedCell {}
class DisclosureSimpleCellBlack: GeneratedCell {}
class DisclosureSimpleCellGrey: GeneratedCell {}


// Text Cells --------------------------
class LeftTextCell: GeneratedCell {}
class RightTextCell: GeneratedCell {}

// String, Integer & Decimal Fields
class LeftIntegerCell: GeneratedCell {}
class RightIntegerCell: GeneratedCell {}
class LeftDecimalCell: GeneratedCell {}
class RightDecimalCell: GeneratedCell {}
class MinutesSecondsCell: GeneratedCell {}
class OutputSimpleCell: GeneratedCell {}
class MailCell: GeneratedCell {}
class PasswordCell: GeneratedCell {}
class CustomCell: GeneratedCell {
	@IBOutlet weak var submitButton: UIButton!
	
	override func updateCell(model: EvaluationItem) {
		super.updateCell(model: model)
		self.submitButton.layer.cornerRadius = 4.0
		self.submitButton.layer.borderColor = self.submitButton.backgroundColor?.cgColor
		self.submitButton.layer.borderWidth = 2.0
	}
	
	@IBAction func buttonAction(_ sender: UIButton) {
		delegate?.keyboardReturnDidPress(model: cellModel)
	}
}

class AboutCell: GeneratedCell {}
class DateCell: GeneratedCell {}


class PartnerCardCell: GeneratedCell {
	override func updateCell(model: EvaluationItem) {
		super.updateCell(model: model)
		let storyboard = UIStoryboard(name: "Medical", bundle: nil)
		let controller = storyboard.instantiateViewController(withIdentifier: "SpecialistControllerID") as! SpecialistController
		self.backgroundView = controller.view
		//self.backgroundView?.backgroundColor = UIColor(palette: ColorPalette.hanPurple)

	}
}

class ReferencesCardCell: GeneratedCell {
	override func updateCell(model: EvaluationItem)  {
		super.updateCell(model: model)
		let storyboard = UIStoryboard(name: "Medical", bundle: nil)
		let controller = storyboard.instantiateViewController(withIdentifier: "ReferencesControllerID") as! ReferencesController
		self.backgroundView = controller.view
		//self.backgroundView?.backgroundColor = UIColor(palette: ColorPalette.hanPurple)

	}
}

//FIXME: Phillip, output font sizes are here
class OutputResultsCell: GeneratedCell {
	override func updateCell(model: EvaluationItem) {
		super.updateCell(model: model)

		//self.titleLabel?.font = CVDStyle.style.currentFont
		self.titleLabel?.font = UIFont(name: "OpenSans-Bold", size: CVDStyle.style.currentFont.pointSize + 5)
		//print("\(CVDStyle.style.currentFont.fontName)")
		
		self.subtitleLabel?.font = CVDStyle.style.currentFont
		//self.subtitleLabel?.textColor = CVDStyle.style.subtitleColor
		
		//self.titleLabel?.font = UIFont(name: "OpenSans-Bold", size: 24.0)
		//self.subtitleLabel?.font = UIFont(name: "OpenSans-SemiBold", size: 19.0)
		self.subtitleLabel?.textColor = CVDStyle.style.defaultFontColor

		let substrings = self.cellModel.subtitle ?? ""
		var combineString = ""
		for item in substrings.lines where !item.isEmpty {
			combineString += "\u{2022} \(item)\n"
		}
		self.subtitleLabel?.text = combineString
	}
}

extension String {
	var lines: [String] {
		var result: [String] = []
		enumerateLines { line, _ in result.append(line) }
		return result
	}
}
