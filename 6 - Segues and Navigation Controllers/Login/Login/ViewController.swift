//
//  ViewController.swift
//  Login
//
//  Created by Student on 2020-05-29.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    
    @IBOutlet var forgotUserNameButton: UIButton!
    
    @IBOutlet var forgotPassWordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPassWordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
             segue.destination.navigationItem.title = "Forgot Username"
            } else {
                segue.destination.navigationItem.title =
                userName.text
            }
    }

    @IBAction func forgotUserNameTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPassWordTapped(_ sender: Any) {
         performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotPassWordButton)
        
    }
    
}

