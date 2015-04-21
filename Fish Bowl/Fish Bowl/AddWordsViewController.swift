//
//  AddWordsViewController.swift
//  Fish Bowl
//
//  Created by PK on 4/13/15.
//  Copyright (c) 2015 PK. All rights reserved.
//

import UIKit

class AddWordsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet weak var teamLabelOne: UILabel!
    
    @IBOutlet weak var teamTextFieldOne: UITextField!
    
    @IBAction func teamAddButtonOne(sender: UIButton) {
        
        teamLabelOne.text = teamTextFieldOne.text
        
    }
    
    
    @IBOutlet weak var teamLabelTwo: UILabel!
    
    @IBOutlet weak var teamTextFieldTwo: UITextField!
    
    @IBAction func teamAddButtonTwo(sender: UIButton) {
        
        teamLabelTwo.text = teamTextFieldTwo.text
        
    }
    
    
    
    
    
    
    
    // Define plist
    var questions = [String]()
    // Say plist Name
    let path = NSBundle.mainBundle().pathForResource("questions", ofType: "plist")
    
    // Number of cells in table view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    // Info for Table View
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("questionCell")as! UITableViewCell
        cell.textLabel?.text = questions[indexPath.row]
        return cell
    }
    
    
    override func viewDidLoad() {
        //Makes sure the table view is loaded
        if let path = path {
            questions = NSArray(contentsOfFile: path) as! [String]
        }
    }
    
    
    
}
