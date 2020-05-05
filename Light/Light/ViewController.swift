//
//  ViewController.swift
//  Light
//
//  Created by Student on 2020-04-29.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateUI () {
       view.backgroundColor = lightOn ? .white : .black
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
       updateUI()
    
    }

}
