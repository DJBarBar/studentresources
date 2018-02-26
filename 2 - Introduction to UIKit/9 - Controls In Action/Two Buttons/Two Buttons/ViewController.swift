//
//  ViewController.swift
//  Two Buttons
//
//  Created by Cory Barton on 2/23/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        textLabel.text = textField.text
        }
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textField.text = ""
        textLabel.text = ""
    }
}



