//
//  ViewController.swift
//  New Tip Calculator
//
//  Created by Preethi Goli on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textlabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmount: UISegmentedControl!
    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var TipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(inputField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.2, 0.25]
        let tip = bill * tipPercentages[tipAmount.selectedSegmentIndex]
        let total = bill + tip
        totalLabel.text = String(format: "$%.2f", total)
        TipLabel.text = String(format: "$%.2f", tip)
        
    }
    
}

