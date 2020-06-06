//
//  ViewController.swift
//  LifeCycle
//
//  Created by Student on 2020-06-04.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("FirstViewController - View Did Load")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("FirstViewController - View Will Appear")
    }
    override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
         print("FirstViewController - View Will Appear")
     }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("FirstViewController - View will Disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("FirstViewController - View Did Disappear")
    }

}

