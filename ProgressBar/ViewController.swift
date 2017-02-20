//
//  ViewController.swift
//  ProgressBar
//
//  Created by ricardo silva on 20/02/2017.
//  Copyright © 2017 ricardo silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBarView: ProgressBarView!
    @IBOutlet weak var slider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }



    @IBAction func sliderMoved(_ sender: Any) {
        progressBarView.innerProgress = CGFloat(slider.value)
    }


}

