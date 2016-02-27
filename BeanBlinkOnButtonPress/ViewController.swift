//
//  ViewController.swift
//  BeanBlinkOnButtonPress
//
//  Created by Nadine Hachouche on 1/27/16.
//  Copyright © 2016 nadine farah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    // Step 1: create a label
    @IBOutlet weak var ledTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


// Mark: Actions
    // Step 2: get some logic for the button working
    // Run the app and make sure it is toggling as you expect
    @IBAction func pressMeButtonToToggleLED(sender: AnyObject) {
    
        if ledTextLabel.text == nil {
            ledTextLabel.text = "Led is: OFF"
        } else if ledTextLabel.text == "Led is: OFF" {
            ledTextLabel.text = "Led is: ON"
        } else {
            ledTextLabel.text = "Led is: OFF"
        }
    
    }

}
