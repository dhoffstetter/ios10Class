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

    @IBOutlet var nameField: UITextField!
    @IBOutlet var nameLabel: UILabel!
    
    @IBAction func submitButtonTapped(_ sender: AnyObject) {
        
        nameLabel.text = nameField.text
        
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

