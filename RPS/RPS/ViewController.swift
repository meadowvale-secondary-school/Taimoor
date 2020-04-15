//
//  ViewController.swift
//  RPS
//
//  Created by Student on 2020-04-14.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var computorLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var sisscorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    var currentGameStatus: GameState = GameState.start
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetBoard()
    }
    
    func resetBoard() {
        computorLabel.text = "🤖"
        statusLabel.text = "Rock, Paper, Sisscors?"
        rockButton.isHidden = false
        rockButton.isEnabled = true
        paperButton.isHidden = false
        paperButton.isEnabled = true
        sisscorsButton.isHidden = false
        sisscorsButton.isEnabled = true
        playAgainButton.isHidden = true
    }
    
    func play(_ playerTurn: Sign) {
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        sisscorsButton.isEnabled = false
        
        let opponent = randomSign()
        computorLabel.text = opponent.emoji
        
        currentGameStatus = playerTurn.takeTurn(opponent)
        
        switch currentGameStatus {
        case .draw:
            statusLabel.text = "It's a draw."
        case .lose:
            statusLabel.text = "You lost."
        case .win:
            statusLabel.text = "You won."
        case .start:
            statusLabel.text = "Rock, Papper, Sisscors?"
                    
        }
        
        switch playerTurn {
        case .rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            sisscorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            sisscorsButton.isHidden = true

        case .sisscors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            sisscorsButton.isHidden = false
        }
        playAgainButton.isHidden = false
    }
    
    @IBAction func playAgainSelected(_ sender: Any) {
        resetBoard()
    }
    
    @IBAction func rockSelected(_ sender: Any) {
        play(Sign.rock)
    }
    
    @IBAction func paperSelected(_ sender: Any) {
        play(Sign.paper)
    }

    @IBAction func sisscorsSelected(_ sender: Any) {
        play(Sign.sisscors)
    }
    
}

