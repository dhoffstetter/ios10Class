//
//  ViewController.swift
//  Egg Timer
//
//  Created by Diane Hoffstetter on 8/16/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var timeRemainingLabel: UILabel!
  
  @IBAction func pauseButtonPressed(_ sender: AnyObject) {
    
    if timerIsRunning {
      
      timerIsRunning = false
      timer.invalidate()
    }
  }
  
  @IBAction func playButtonPressed(_ sender: AnyObject) {
    
    if !timerIsRunning {
      
      timerIsRunning = true
      timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
  }
  
  @IBAction func m10ButtonPressed(_ sender: AnyObject) {
    
    if timeRemaining > 10 {
      timeRemaining -= 10
      timeRemainingLabel.text = String(timeRemaining)
    }
  }
  
  @IBAction func p10ButtonPressed(_ sender: AnyObject) {
    
    timeRemaining += 10
    timeRemainingLabel.text = String(timeRemaining)
  }
  
  @IBAction func resetButtonPressed(_ sender: AnyObject) {
    
    if timerIsRunning
    {
      timerIsRunning = false
      timer.invalidate()
    }
    timeRemaining = initialTime
    timeRemainingLabel.text = String(timeRemaining)
  }
  
  var timer = Timer()

  let initialTime = 210
  var timeRemaining = 0
  var startTimer = false
  var timerIsRunning = false
  
  func processTimer() {
    
    if timeRemaining > 0 {
        
      timeRemaining -= 1
      timeRemainingLabel.text = String(timeRemaining)
    } else {
      
      timerIsRunning = false
      timer.invalidate()
    }

    
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    self.timeRemaining = self.initialTime
    timeRemainingLabel.text = String(self.timeRemaining)
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

