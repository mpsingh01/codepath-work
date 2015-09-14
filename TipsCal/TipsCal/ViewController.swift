//
//  ViewController.swift
//  TipsCal
//
//  Created by Manpreet Singh on 9/12/15.
//  Copyright © 2015 The Climate Corporation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        
    tipLabel.text = "$0.00"
    totalLabel.text = "$0.00"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: UITextField) {
        tipControl.addTarget(self, action: "onEditingChanged:", forControlEvents: .ValueChanged);
        
       var tipPercentages = [0.18, 0.2, 0.22]
        
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = billField.text!._bridgeToObjectiveC().doubleValue
        
       let tip = billAmount * Double(tipPercentage)
        let total = billAmount + tip
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
  
   
    

    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}

