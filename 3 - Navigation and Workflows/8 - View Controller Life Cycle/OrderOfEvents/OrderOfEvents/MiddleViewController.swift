//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Cory Barton on 3/21/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {
    
    @IBOutlet weak var middleLabel: UILabel!
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let existingText = middleLabel.text {
            middleLabel.text = "\nEvent number \(eventNumber) was viewDidLoad"
            eventNumber += 1
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewWillAppear"
            eventNumber += 1
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidAppear"
            eventNumber += 1
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewWillDisappear"
            eventNumber += 1
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidDisappear"
            eventNumber += 1
        }
    }
}
