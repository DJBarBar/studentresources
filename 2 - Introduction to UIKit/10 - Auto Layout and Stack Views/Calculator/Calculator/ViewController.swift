//
//  ViewController.swift
//  Calculator
//
//  Created by Cory Barton on 2/26/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var currentOperator =
    var 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reset()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func reset() {
        displayLabel.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func numberTapped(_ sender: UIButton) {
        guard let number = sender.currentTitle else {
            return
        }
        self.displayLabel.text = displayLabel.text ?? "" + number
    }
    
    func getLabelCurrentText() -> String {
        let currentText = displayLabel.text ?? ""
        if currentText == "0" {
            return ""
        } else {
            return currentText
        }
    }
    
    @IBAction func zeroTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func dotButton(_ sender: UIButton) {
    }
    
    @IBAction func computationTapped(_ sender: UIButton) {
        currentOperator = sender.currentTitle
        guard let displayText = displayLabel.text, let firstNumber = Double(displayText) else {
            return
        }
        
        self.firstNumber = firstNumber
    }
    
    @IBAction func equalTapped(_ sender: UIButton) {
    }
    
    @IBAction func clearTapped(_ sender: UIButton) {
        reset()
    }
    
    @IBAction func negativePositiveTapped(_ sender: UIButton) {
    }
    
    @IBAction func percentTapped(_ sender: UIButton) {
    }
    
    
    
}

