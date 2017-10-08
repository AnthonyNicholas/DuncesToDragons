//
//  MyQuestionsPage.swift
//  Each1Teach1
//
//  Created by Anthony Nicholas on 7/10/17.
//  Copyright © 2017 Anthony Nicholas. All rights reserved.
//

import UIKit

class MyQuestionsPage: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var MyQuestionsLabel: UILabel!
    @IBOutlet weak var myQuestionTable: UITableView!
    
    var selectedRow:Int = -1
    var questionList:[String] = ["How do I calculate angular momentum?", "I can't understand language in Shakesphere?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My Questions"
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addQuestion))
        self.navigationItem.rightBarButtonItem = addButton
//        self.navigationItem.leftBarButtonItem = editButtonItem
        
//        cell.textLabel.font = [UIFont fontWithName:@"Papyrus" size:14.0f];
        
        
    }
    
    
    func addQuestion(){
        let newQuestion:String = "New Question"
        questionList.insert(newQuestion, at: 0)
        
        let indexPath:IndexPath = IndexPath(row: 0, section: 0)
        myQuestionTable.insertRows(at: [indexPath], with: .automatic)
        myQuestionTable.selectRow(at: indexPath, animated: true, scrollPosition: .none)
        self.performSegue(withIdentifier: "myQ_detail", sender: nil)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionList.count
    }
    
    //Handle deletions from table using built in edit functionality
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        myQuestionTable.setEditing(editing, animated: animated)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        questionList.remove(at: indexPath.row)
        myQuestionTable.deleteRows(at: [indexPath], with: .fade)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "myQ_detail", sender: nil)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "myQ_cell")!
        
        cell.textLabel?.text = questionList[indexPath.row]
        cell.textLabel?.font = UIFont(name:"Papyrus", size:14)
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailView:MyQuestionsDetailView = segue.destination as! MyQuestionsDetailView
        selectedRow = myQuestionTable.indexPathForSelectedRow!.row
        detailView.setQuestion(q: questionList[selectedRow])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
