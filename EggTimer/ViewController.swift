//
//  ViewController.swift
//  EggTimer
//
//  Created by David on 10/13/16.
//  Copyright © 2016 dmsmith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timerLabel: UILabel!
    
    var time = 210
    var timer = Timer()
    
    @IBAction func playButton(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decrement), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func minus10Button(_ sender: AnyObject) {
        if (time > 10) {
            time -= 10
            setTimerLabel()
        }
    }
    
    @IBAction func plus10Button(_ sender: AnyObject) {
        time += 10
        setTimerLabel()
    }
    
    
    @IBAction func resetButton(_ sender: AnyObject) {
        time = 210
        setTimerLabel()
    }
    
    func decrement() {
        if (time > 0) {
            time -= 1
            setTimerLabel()
        } else {
            timer.invalidate()
        }
    }
    
    func setTimerLabel() {
        timerLabel.text = String(time)
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

