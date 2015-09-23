//
//  ViewController.swift
//  stopwatch-app
//
//  Created by Jason Shultz on 9/22/15.
//  Copyright © 2015 HashRocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTimer: UILabel!
    
    var timer = NSTimer()
    
    var time = 0
    
    var started = 0
    
    func result() {
        time++
        labelTimer.text = String(time)
        print(time)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        timer.invalidate()
        started = 0
    }
    
    @IBAction func startButton(sender: AnyObject) {
        if started == 0 {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
            started = 1
        }
    }

    @IBAction func resetButton(sender: AnyObject) {
        time = 0
        timer.invalidate()
        started = 0
        labelTimer.text = "0"
    }

}

