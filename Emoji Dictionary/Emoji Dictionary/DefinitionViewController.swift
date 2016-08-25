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
  @IBOutlet weak var categoryLabel: UILabel!
  @IBOutlet weak var birthYearLabel: UILabel!
  
  var emoji = Emoji()
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      emojiLabel.text = emoji.stringEmoji
      definitionLabel.text = emoji.definition
      categoryLabel.text = "Category : " + emoji.category
      birthYearLabel.text = "Birth Year : \(emoji.birthYear)"
      
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
