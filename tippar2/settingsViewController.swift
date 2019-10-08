//
//  settingsViewController.swift
//  tippar2
//
//  Created by Ryan Pinnock on 10/7/19.
//  Copyright © 2019 Ryan Pinnock. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var tipOrNoTip: UISegmentedControl!
    
    @IBOutlet weak var customTip: UISegmentedControl!
    
    @IBOutlet weak var currencyChange: UISegmentedControl!
    
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    @IBOutlet weak var customTipText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func endSettingsEditing(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func changeMode(_ sender: Any) {
    }
    
    @IBAction func tipOrNone(_ sender: Any) {
    }
    
    @IBAction func customTip(_ sender: Any) {
    }
    
    @IBAction func changeCurrency(_ sender: Any) {
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
