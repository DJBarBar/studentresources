//
//  ViewController.swift
//  Contest
//
//  Created by Cory Barton on 5/9/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailOutlet: UITextField!
    @IBAction func submitButton(_ sender: Any) {
        if emailOutlet.text == "" {
            
            UIView.animate(withDuration: 0.2, animations: {
                
                let rightTransform  = CGAffineTransform(translationX: 20, y: 0)
                self.emailOutlet.transform = rightTransform
                
            }) { (_) in
                
                UIView.animate(withDuration: 0.2, animations: {
                    self.emailOutlet.transform = CGAffineTransform.identity
                })
            }
            
        } else {
            
            performSegue(withIdentifier: "toEnteredView", sender: nil)
        }
    }
}


