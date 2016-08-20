//
//  ViewController.swift
//  Hello World
//
//  Created by Rob Percival on 16/06/2016.
//  Copyright © 2016 Appfish. All rights reserved.
//

// This is a comment

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ageTextfield: UITextField!
    
    @IBOutlet var ageLabel: UILabel!
    
    
    @IBAction func submitPressed(_ sender: AnyObject) {
        
        let ageInCatYears = Int(ageTextfield.text!)! * 7
        
        ageLabel.text = String(ageInCatYears)
        
        
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

