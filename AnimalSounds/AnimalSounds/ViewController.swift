//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Student on 2020-04-03.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let meowSound = SimpleSound(named: "meow")
    let woofSound = SimpleSound(named: "woof")
    let mooSound = SimpleSound (named: "moo")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var animalSoundLabel: UILabel!
    @IBAction func catButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Meow"
        meowSound.play()
    }
    @IBAction func dogButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Woof"
        woofSound.play()
    }

    @IBAction func cowButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Moo"
        mooSound.play()
    }
}

