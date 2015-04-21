//
//  AddWordsViewController.swift
//  Fish Bowl
//
//  Created by PK on 4/13/15.
//  Copyright (c) 2015 PK. All rights reserved.
//

import UIKit

class AddWordsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    var superheroes = [String]()
    
    let path = NSBundle.mainBundle().pathForResource("questions", ofType: "plist")
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superheroes.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("questionCell")as! UITableViewCell
        
        cell.textLabel?.text = superheroes[indexPath.row]
        
        return cell
    }
    
    
    override func viewDidLoad() {
        if let path = path {
            superheroes = NSArray(contentsOfFile: path) as! [String]
        }
    }
    
    
    
}
