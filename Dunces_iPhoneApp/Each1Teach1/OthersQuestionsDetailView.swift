//
//  OthersQuestionsDetailView.swift
//  Each1Teach1
//
//  Created by Anthony Nicholas on 7/10/17.
//  Copyright © 2017 Anthony Nicholas. All rights reserved.
//

import UIKit

class OthersQuestionsDetailView: UIViewController {

    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Answer1: UILabel!
    @IBOutlet weak var OtherProfilePic: UIImageView!
    @IBOutlet weak var AnswerTextBox: UITextField!
    
    var question:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        OtherProfilePic.image = #imageLiteral(resourceName: "answerPic.jpg")
        QuestionLabel.text = question

        // Do any additional setup after loading the view.
    }

    func setQuestion(q:String){
        question = q
        print(q)
        if isViewLoaded{
            QuestionLabel.text = q
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
