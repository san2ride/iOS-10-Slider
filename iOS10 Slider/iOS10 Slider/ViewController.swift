//
//  ViewController.swift
//  iOS10 Slider
//
//  Created by don't touch me on 12/2/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderView: UISlider!
    @IBOutlet weak var labelView: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let halfSizeOfView = 25.0
        let maxViews = 25
        let insetSize = self.view.bounds.insetBy(dx: CGFloat(Int(2 * halfSizeOfView)), dy: CGFloat(Int(2 * halfSizeOfView))).size
        
        //add the views
        for _ in 0..<maxViews {
            
            let pointX = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.width))))
            let pointY = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.height))))
            
            let newView = MyView(frame: CGRect(x: pointX, y: pointY, width: 50, height: 50))
            self.view.addSubview(newView)
        }
    }
    


    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        var currentValue = Int(sender.value)
        
        labelView.text = "\(currentValue)"
    }

    
}

