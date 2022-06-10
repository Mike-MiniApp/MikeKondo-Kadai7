//
//  SubtractionViewController.swift
//  MikeKondo-Kadai7
//
//  Created by 近藤米功 on 2022/06/03.
//

import UIKit

class GreenSubtractionViewController: UIViewController {
    @IBOutlet private var number1TextField: UITextField!
    @IBOutlet private var number2TextField: UITextField!
    @IBOutlet private var calcResultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
    }

    @IBAction private func didTapCalcButton(_ sender: Any) {
        let number1: Int = Int(number1TextField.text ?? "") ?? 0
        let number2: Int = Int(number2TextField.text ?? "") ?? 0
        let calcResultNumber = number1 - number2
        calcResultLabel.text = String(calcResultNumber)
        view.endEditing(true)
    }

    private func setupTextFields() {
        number1TextField.delegate = self
        number2TextField.delegate = self
        number1TextField.keyboardType = .numberPad
        number2TextField.keyboardType = .numberPad
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

extension GreenSubtractionViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
    }
}
