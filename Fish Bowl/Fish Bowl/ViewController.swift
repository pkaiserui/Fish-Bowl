//
//  ViewController.swift
//  Fish Bowl
//
//  Created by PK on 4/13/15.
//  Copyright (c) 2015 PK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var superheroes = [String]()
    
   let path = NSBundle.mainBundle().pathForResource("questions", ofType: "plist")
    
    
    
    @IBAction func howToPlay(sender: UIButton) {
        
        println(superheroes[1])
        
        let nsarray = NSArray()
        
        nsarray.writeToFile(path!, atomically: true)
        
    }
    
    
    
    
    
    

    override func viewDidLoad() {
 
        let path = NSBundle.mainBundle().pathForResource("questions", ofType: "plist")
        
        if let path = path {
            superheroes = NSArray(contentsOfFile: path) as! [String]
        }
        
}

     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

