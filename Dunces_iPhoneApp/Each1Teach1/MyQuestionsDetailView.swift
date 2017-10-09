//
//  MyQuestionsDetailView.swift
//  Each1Teach1
//
//  Created by Anthony Nicholas on 7/10/17.
//  Copyright © 2017 Anthony Nicholas. All rights reserved.
//

import UIKit

class MyQuestionsDetailView: UIViewController {
    @IBOutlet weak var myQuestionLabel: UILabel!
    @IBOutlet weak var answer1: UILabel!
    @IBOutlet weak var answer2: UILabel!
    @IBOutlet weak var answer3: UILabel!
    @IBOutlet weak var answerPic1: UIImageView!
    @IBOutlet weak var answerPic2: UIImageView!
    @IBOutlet weak var answerPic3: UIImageView!
    
    var q_Data: qData?
    
    var question:String = ""
    var answer:String = ""
    var images:[UIImage] = [#imageLiteral(resourceName: "Dunce Profile.jpg"),#imageLiteral(resourceName: "Tutor Level 1.jpg"),#imageLiteral(resourceName: "Tutor Level 2.jpg"),#imageLiteral(resourceName: "Tutor Level 3.jpg"),#imageLiteral(resourceName: "Tutor Level 4.jpg"),#imageLiteral(resourceName: "Tutor Level 5.jpg")]
    var answerList:[String] = ["3pm, Hayden Library, Mohit", "11am, Memorial Union, Julia", "5.30pm, Starbucks, Jacob"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        myQuestionLabel.text = question
        answer1.text = answerList[0]
        answer2.text = answerList[1]
        answer3.text = answerList[2]

        answerPic1.image = images[2]
        answerPic2.image = images[1]
        answerPic3.image = images[0]


        
    }
    
    func setQuestion(q:String){
        question = q
        if isViewLoaded{
            myQuestionLabel.text = q
        }
    }

    func setAnswer(a:String){
        answer = a
        if isViewLoaded{
            answer1.text = a
        }
    }
    
    func setImages(i:[UIImage]){
        images = i
        if isViewLoaded{
//            answerPic1.image = images[2]
//            answerPic2.image = images[1]
//            answerPic3.image = images[0]
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
