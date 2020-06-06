//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Student on 2020-06-04.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

  
    @IBOutlet var middleViewLabel: UILabel!
    
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let existingText = middleViewLabel.text {
            middleViewLabel.text = "\(existingText)\nEventNumber \(eventNumber) was viewDidLoad"
             eventNumber += 1
         }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let existingText = middleViewLabel.text {
            middleViewLabel.text = "\(existingText)\nEventNumber \(eventNumber) was viewWillAppear"
                   eventNumber += 1
               }
    }
    
    override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
        if let existingText = middleViewLabel.text {
            middleViewLabel.text = "\(existingText)\nEventNumber \(eventNumber) was viewDidAppear"
                   eventNumber += 1
               }
     }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let existingText = middleViewLabel.text {
            middleViewLabel.text = "\(existingText)\nEventNumber \(eventNumber) was viewWillDisappear"
                   eventNumber += 1
               }
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
         if let existingText = middleViewLabel.text {
            middleViewLabel.text = "\(existingText)\nEventNumber \(eventNumber) was viewDidDisappear"
                    eventNumber += 1
            }
    }
    
}
