//
//  PlayViewController.swift
//  Fish Bowl
//
//  Created by PK on 4/13/15.
//  Copyright (c) 2015 PK. All rights reserved.
//

import UIKit


class PlayViewController: UIViewController {
    
    @IBOutlet weak var time: UILabel!
    
    var timer = NSTimer()
    
    var count = 10
    
    func result() {
        count = count - 1
        time.text = "\(count)"
        if count <= 0 {
            var questionVC = storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController")
                as! ResultsViewController
            presentViewController(questionVC, animated: true, completion: nil)
            timer.invalidate()
        }
    }
    
    
    override func viewDidLoad() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    
}
