//
//  TuteMeet.swift
//  Each1Teach1
//
//  Created by Anthony Nicholas on 7/10/17.
//  Copyright © 2017 Anthony Nicholas. All rights reserved.
//

import UIKit

class TuteMeet: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!

    var minutes = 0 //This variable will hold a starting    value of seconds. It could be any amount above 0.
    var timer = Timer()
    var isTimerRunning = false //This will be used to make sure only one timer is created at a time.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runTimer()
        timerLabel.text = "0"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 3, target: self,   selector: (#selector(TuteMeet.updateTimer)), userInfo: nil, repeats: true)
    }
    
    func updateTimer() {
        minutes += 1     //This will increment(count down)the seconds.
        timerLabel.text = String(minutes) //This will update the label.
    }
    

}
