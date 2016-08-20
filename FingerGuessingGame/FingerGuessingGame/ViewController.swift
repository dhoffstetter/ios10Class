//
//  ViewController.swift
//  FingerGuessingGame
//
//  Created by Diane Hoffstetter on 8/10/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var guessTextField: UITextField!
  @IBOutlet weak var resultLabel: UILabel!
  
  @IBAction func guessButtonPressed(_ sender: AnyObject) {
    
    let diceRoll = arc4random_uniform(6) // random number between 0 and 5 inclusive
    
    if UInt32(guessTextField.text!) == diceRoll {
      
      resultLabel.text = "Correct! Number is " + String(diceRoll) + "."
    } else {
      resultLabel.text = "Wrong! Number was " + String(diceRoll) + "."
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

