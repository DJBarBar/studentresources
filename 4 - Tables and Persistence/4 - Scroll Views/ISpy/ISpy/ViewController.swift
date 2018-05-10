//
//  ViewController.swift
//  ISpy
//
//  Created by Cory Barton on 4/2/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    //MARK: Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView.delegate = self
        updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

