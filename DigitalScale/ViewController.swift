//
//  ViewController.swift
//  DigitalScale
//
//  Created by Tarang khanna on 12/28/15.
//  Copyright © 2015 Tarang khanna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            if traitCollection.forceTouchCapability == UIForceTouchCapability.Available {
                if touch.force >= touch.maximumPossibleForce {
                    weightLabel.text = "385+ grams"
                } else {
                    let force = touch.force/touch.maximumPossibleForce
                    let grams = force * 385
                    weightLabel.text = "\(Int(grams)) grams"
                }
            }
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        weightLabel.text = "0 grams"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

