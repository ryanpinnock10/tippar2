//
//  ViewController.swift
//  tippar2
//
//  Created by Ryan Pinnock on 9/30/19.
//  Copyright © 2019 Ryan Pinnock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var currencyControl: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dissapearGesture(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        //Change currency
        
//        let currencyFormatter = NumberFormatter()
//        currencyFormatter.usesGroupingSeparator = true
//        currencyFormatter.numberStyle = .currency
//        // localize to your grouping and decimal separator
//        currencyFormatter.locale = Locale.current
        
        //Get the bill amount
        let bill = Double(billLabel.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
//        let currencyChanged = ["£", "€", "¥", "$"]

//        let currency = currencyChanged[currencyControl.selectedSegmentIndex]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
            
        //Update the tip amount
        tipLabel.text = String(format:  "$%.2f", tip)
        totalLabel.text = String(format:  "$%.2f", total)
        //String(format: "%.2f", total)
        
    }
    
}

