//
//  ViewController.swift
//  Each1Teach1
//
//  Created by Anthony Nicholas on 7/10/17.
//  Copyright © 2017 Anthony Nicholas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TuteTimeOutputLabel: UILabel!
    @IBOutlet weak var TutePointsOutputLabel: UILabel!
    @IBOutlet weak var OtherQ_Button: UIButton!
    @IBOutlet weak var MyQ_Button: UIButton!
    @IBOutlet weak var MeetUpButton: UIButton!
    @IBOutlet weak var dragonLabel: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var duncePic: UIImageView!
    @IBOutlet weak var drag1pic: UIImageView!
    @IBOutlet weak var drag2pic: UIImageView!
    @IBOutlet weak var drag3pic: UIImageView!
    @IBOutlet weak var drag4pic: UIImageView!
    @IBOutlet weak var drag5pic: UIImageView!
    @IBOutlet weak var bigDragPic: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "MainPage"
        resetTuteStats()
        MeetUpButton.layer.cornerRadius = 5
        dragonLabel.layer.cornerRadius = 5
        profilePic.layer.cornerRadius = 10
        duncePic.layer.cornerRadius = 4
        drag1pic.layer.cornerRadius = 4
        drag2pic.layer.cornerRadius = 4
        drag3pic.layer.cornerRadius = 4
        drag4pic.layer.cornerRadius = 4
        drag5pic.layer.cornerRadius = 4
        bigDragPic.layer.cornerRadius = 100
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func resetTuteStats(){
        TuteTimeOutputLabel.text = "16 Hours"
        TutePointsOutputLabel.text = "4.3"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }



}

