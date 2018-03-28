//
//  ViewController.swift
//  AppEventCount
//
//  Created by Cory Barton on 3/28/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    var didFinishLaunchingCount = 0
    
    @IBOutlet weak var willResignActiveLabel: UILabel!
    var willResignActiveCount = 0
    
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    var didEnterBackroundCount = 0
    
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    var willEnterForegroundCount = 0
    
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    var didBecomeActiveCount = 0
    
    @IBOutlet weak var willTerminateLabel: UILabel!
    var willTerminateCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
        
        func updateView() {
            didFinishLaunchingLabel.text = "The app has launched \(didFinishLaunchingCount) time(s)."
            willResignActiveLabel.text = "The app has resign active \(willResignActiveCount) time(s)."
            didEnterBackgroundLabel.text = "The app entered background \(didEnterBackroundCount) time(s)."
            willEnterForegroundLabel.text = "The app entered foreground \(willEnterForegroundCount) time(s)."
            didBecomeActiveLabel.text = "The app became active \(didBecomeActiveCount) time(s)."
            willTerminateLabel.text = "The app terminated \(willTerminateCount) time(s)."
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

