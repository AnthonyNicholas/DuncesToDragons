//
//  TuteMeet.swift
//  Each1Teach1
//
//  Created by Anthony Nicholas on 7/10/17.
//  Copyright © 2017 Anthony Nicholas. All rights reserved.
//

import UIKit

class TuteMeet: UIViewController {
    
    @IBOutlet weak var tuteLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var mapPicture: UIImageView!
    @IBOutlet weak var confirmMeetUpButton: UIButton!
    @IBOutlet weak var starRatingBar: UIImageView!

    var minutes = 0 //This variable will hold a starting    value of seconds. It could be any amount above 0.
    var timer = Timer()
    var confStage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLabel.text = "0"
        mapPicture.layer.cornerRadius = 10
        confStage = 0
        starRatingBar.isHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(TuteMeet.updateTimer)), userInfo: nil, repeats: true)
    }
    
    func updateTimer() {
        minutes += 1     //This will increment(count down)the seconds.
        timerLabel.text = String(minutes) //This will update the label.
    }

    @IBAction func didPressConfirmMeetUp(_ sender: Any) {

        if confStage == 1{
            print(confStage)
            timer.invalidate()
            tuteLabel.text = "Good session? Give stars..."
            tuteLabel.font = tuteLabel.font.withSize(16)
            confirmMeetUpButton.backgroundColor = UIColor.orange
            confirmMeetUpButton.setTitle("Finished", for: .normal)
            starRatingBar.isHidden = false
            timerLabel.isHidden = true
            confStage = 2
        }
        if confStage == 0{
            print(confStage)
            runTimer()
            confirmMeetUpButton.backgroundColor = UIColor.cyan
            confirmMeetUpButton.setTitle("End", for: .normal)
            confStage = 1
        }
    }
}
