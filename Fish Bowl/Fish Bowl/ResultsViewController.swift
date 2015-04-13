//
//  ResultsViewController.swift
//  Fish Bowl
//
//  Created by PK on 4/13/15.
//  Copyright (c) 2015 PK. All rights reserved.
//

import UIKit



class ResultsViewController: UIViewController {
    
    
    
    @IBAction func newGame(sender: AnyObject) {
        
        self.performSegueWithIdentifier("newGameSegue", sender: nil)
        
    }
    
    
    
    
}
