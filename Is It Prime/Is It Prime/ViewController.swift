//
//  ViewController.swift
//  Is It Prime
//
//  Created by Diane Hoffstetter on 8/10/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var enterNumberTextField: UITextField!
  @IBOutlet weak var resultsLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func checkButtonPushed(_ sender: AnyObject) {
    
    var isPrime = true
    
    if let inputNumber = Int(enterNumberTextField.text!) {
      
      if inputNumber > 1 {
        
        
        var i = 2
        
        while i < inputNumber {
          
          if inputNumber % i == 0
          {
            isPrime = false
            i = inputNumber
          } else {
            i += 1
          }
          
        }
        
        if isPrime {
          resultsLabel.text = enterNumberTextField.text! + " is Prime."
        } else {
          resultsLabel.text = enterNumberTextField.text! + " is Not Prime."
        }
        
      } else {
        resultsLabel.text = "Enter > 1"
      }

    } else {
      
      resultsLabel.text = "Enter Valid Number"

    }
    
  }
  


}

