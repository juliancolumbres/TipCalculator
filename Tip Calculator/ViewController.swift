//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Julian Columbres on 1/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipPercentage: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var eachAmount: UILabel!
    @IBOutlet weak var splitAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        billTextField.becomeFirstResponder()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = UserDefaults.standard
        let defaultTip = defaults.float(forKey: "defaultTip")
        let minTip = defaults.float(forKey: "minTip")
        let maxTip = defaults.float(forKey: "maxTip")
        tipPercentageSlider.minimumValue = minTip
        tipPercentageSlider.maximumValue = maxTip
        tipPercentageSlider.setValue(defaultTip, animated: true)
        tipPercentage.text = String(format: "Tip: %.0f%%", defaultTip)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }

    
    @IBAction func onTap(_ sender: Any) {
    
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let split = Double(splitSlider.value.rounded())
        let bill = Double(billTextField.text!) ?? 0
        let tip = Double(tipPercentageSlider.value.rounded())
        let total = bill + bill * tip / 100
        tipPercentage.text = String(format: "Tip: %.0f%%", tip)
        splitAmount.text = String(format: "Split: %.0f", split)
        totalAmount.text = String(format : "$%.2f", total)
        eachAmount.text = String(format: "$%.2f", total / split)
    }
        
    }
    

