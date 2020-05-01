//
//  ViewController.swift
//  IBBasics
//
//  Created by Student on 2020-04-28.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myButton: UIButton!
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    myButton.setTitleColor(.red, for: .normal)
    }

}

