//
//  OthersQuestionsPage.swift
//  Each1Teach1
//
//  Created by Anthony Nicholas on 7/10/17.
//  Copyright © 2017 Anthony Nicholas. All rights reserved.
//

import UIKit

class OthersQuestionsPage: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var OthersQuestionsTable: UITableViewCell!
    var selectedRow:Int = -1

    var questionList:[String] = ["How do I calculate angular momentum?", "I can't understand language in Shakesphere?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Other Peoples Questions"
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionList.count
    }
    
    //Handle deletions from table using built in edit functionality
    
    //    override func setEditing(_ editing: Bool, animated: Bool) {
    //        super.setEditing(editing, animated: animated)
    //        mainTable.setEditing(editing, animated: animated)
    //    }
    
    //    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    //        questionList.remove(at: indexPath.row)
    //        mainTable.deleteRows(at: [indexPath], with: .fade)
    //    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = questionList[indexPath.row]
        return cell
    }
}

