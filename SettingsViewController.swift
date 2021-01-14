//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Julian Columbres on 1/13/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipField: UITextField!
    @IBOutlet weak var defaultMinTipField: UITextField!
    @IBOutlet weak var defaultMaxTipField: UITextField!
    @IBOutlet weak var defaultTipText: UILabel!
    @IBOutlet weak var minTipText: UILabel!
    @IBOutlet weak var maxTipText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Configuration"

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = UserDefaults.standard
        let defaultTip = defaults.float(forKey: "defaultTip")
        let minTip = defaults.float(forKey: "minTip")
        let maxTip = defaults.float(forKey: "maxTip")
        
        defaultTipText.text = String(format: "Default Tip: %.0f%%", defaultTip)
        minTipText.text = String(format: "Minimum Tip: %.0f%%", minTip)
        maxTipText.text = String(format: "Maximum Tip: %.0f%%", maxTip)
        
        
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
    

    @IBAction func setDefaultTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        let defaultTip = Float(defaultTipField.text!) ?? 10
        defaults.set(defaultTip, forKey: "defaultTip")
        defaults.synchronize()
        
        defaultTipText.text = String(format: "Default Tip: %.0f%%", defaultTip)
    }
    
    @IBAction func setMinTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        let minTip = Float(defaultMinTipField.text!) ?? 10
        defaults.set(minTip, forKey: "minTip")
        defaults.synchronize()
        
        minTipText.text = String(format: "Minimum Tip: %.0f%%", minTip)
    }
    
    @IBAction func setMaxTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        let maxTip = Float(defaultMaxTipField.text!) ?? 25
        defaults.set(maxTip, forKey: "maxTip")
        defaults.synchronize()
        
        maxTipText.text = String(format: "Maximum Tip: %.0f%%", maxTip)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    /*
     
    
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
