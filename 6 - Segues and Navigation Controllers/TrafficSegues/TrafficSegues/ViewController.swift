//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Student on 2020-05-29.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
}

