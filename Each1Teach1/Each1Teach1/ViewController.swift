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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "MainPage"
        resetTuteStats()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func resetTuteStats(){
        TuteTimeOutputLabel.text = "0"
        TutePointsOutputLabel.text = "0"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }



}

