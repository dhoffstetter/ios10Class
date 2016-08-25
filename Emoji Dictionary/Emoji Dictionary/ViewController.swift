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
  
//  var emojis = ["😀","😱","🍷","😈","🐮","🎧"]
  
  var emojis : [Emoji] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    emojiTableView.dataSource = self
    emojiTableView.delegate = self
    emojis = makeEmojiArray()
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return emojis.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = UITableViewCell()
    let emoji = emojis[indexPath.row]
    cell.textLabel?.text = emoji.stringEmoji
    
    return cell
    
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    let emoji = emojis[indexPath.row]
    performSegue(withIdentifier: "moveSegue", sender: emoji)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
    let defVC = segue.destination as! DefinitionViewController
    defVC.emoji = sender as! Emoji
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func makeEmojiArray() -> [Emoji] {
    
    let emoji1 = Emoji()
    emoji1.stringEmoji = "😀"
    emoji1.birthYear = 2010
    emoji1.category = "Smiley"
    emoji1.definition = "Smiley Face"
    
    let emoji2 = Emoji()
    emoji2.stringEmoji = "😱"
    emoji2.birthYear = 2011
    emoji2.category = "Smiley"
    emoji2.definition = "Scream Face"
    
    let emoji3 = Emoji()
    emoji3.stringEmoji = "🍷"
    emoji3.birthYear = 2009
    emoji3.category = "Thing"
    emoji3.definition = "Yummy glass of wine"

    let emojiArray = [emoji1, emoji2, emoji3]
    
    return emojiArray
    
  }

}

















