//
//  OthersQuestionsPage.swift
//  Each1Teach1
//
//  Created by Anthony Nicholas on 7/10/17.
//  Copyright © 2017 Anthony Nicholas. All rights reserved.
//

import UIKit

class OthersQuestionsPage: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var OthersQuestionsTable: UITableView!
    
    var selectedRow:Int = -1
    var question:String = ""
    var answer:String = ""

    var q_Data = qData()
    var questionList:[String] = ["How do I calculate angular momentum?", "I can't understand language in Shakesphere?"]
    var images:[UIImage] = [#imageLiteral(resourceName: "Dunce Profile.jpg"),#imageLiteral(resourceName: "Tutor Level 1.jpg"),#imageLiteral(resourceName: "Tutor Level 2.jpg"),#imageLiteral(resourceName: "Tutor Level 3.jpg"),#imageLiteral(resourceName: "Tutor Level 4.jpg"),#imageLiteral(resourceName: "Tutor Level 5.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Other Peoples Questions"
        
        // Do any additional setup after loading the view.
    }
        

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "otherQ_detail", sender: nil)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "otherQ_Cell")!
        
        cell.textLabel?.text = questionList[indexPath.row]
        cell.textLabel?.font = UIFont(name:"Papyrus", size:14)
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailView:OthersQuestionsDetailView = segue.destination as! OthersQuestionsDetailView
        selectedRow = OthersQuestionsTable.indexPathForSelectedRow!.row
        detailView.setQuestion(q: questionList[selectedRow])
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

