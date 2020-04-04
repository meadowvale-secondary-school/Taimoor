//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Student on 2020-04-02.
//  Copyright © 2020 Apple Inc. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    func UpdateElement() {
        answerLabel.text = "?"
        let elementName = elementList [currentElementIndex]
        let image = UIImage (named: elementName)
        imageView.image = image
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateElement()
    }
    
    @IBOutlet weak var imageView: UIImageView! 
    @IBOutlet weak var answerLabel: UILabel!
    @IBAction func showAnswer(_ sender: AnyObject) {
        answerLabel.text = elementList [currentElementIndex]
    }
    
    @IBAction func gotoNextElement(_ sender: AnyObject) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        UpdateElement()
    }
}

