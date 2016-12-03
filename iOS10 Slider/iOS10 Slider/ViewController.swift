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
        
        
        
        
        
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        var currentValue = Int(sender.value)
        
        labelView.text = "\(currentValue)"
    }

    
}

