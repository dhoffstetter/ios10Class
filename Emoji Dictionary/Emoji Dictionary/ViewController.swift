//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Diane Hoffstetter on 8/20/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

  @IBOutlet weak var emojiTableView: UITableView!
  
  var emojis = ["😀","😱","🍷","😈","🐮","🎧"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    emojiTableView.dataSource = self
    emojiTableView.delegate = self
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return emojis.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = UITableViewCell()
    
    cell.textLabel?.text = emojis[indexPath.row]
    
    return cell
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}
