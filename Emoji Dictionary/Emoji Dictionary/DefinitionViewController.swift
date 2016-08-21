//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Diane Hoffstetter on 8/20/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
  
  @IBOutlet weak var emojiLabel: UILabel!
  @IBOutlet weak var definitionLabel: UILabel!
  var emoji = "NO EMOJI"
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      emojiLabel.text = emoji
      
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
