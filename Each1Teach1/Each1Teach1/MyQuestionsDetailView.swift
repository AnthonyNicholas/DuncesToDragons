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
    
    var question:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        myQuestionLabel.text = question

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setQuestion(q:String){
        question = q
        if isViewLoaded{
            myQuestionLabel.text = q
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
