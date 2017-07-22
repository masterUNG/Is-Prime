//
//  ViewController.swift
//  Is Prime
//
//  Created by MasterUNG on 7/22/2560 BE.
//  Copyright © 2560 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var showResultLabel: UILabel!
    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    
    @IBAction func checkButton(_ sender: Any) {
        
        if let strNumber = numberTextField.text {
            let intNumber = Int(strNumber)
            
            if intNumber != nil {
                
                var intI = 2
                var bolPrime = true
                
                while intI < intNumber! {
                    
                    if intNumber! % intI == 0 {
                        bolPrime = false
                    }
                    
                    intI += 1
                }
                
                if bolPrime {
                    showResultLabel.text = "It Prime"
                }   else {
                    showResultLabel.text = "Not Prime"
                }
                
                
            }   else {
            
                showResultLabel.text = "Please Fill Number"
                
            }
            
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

