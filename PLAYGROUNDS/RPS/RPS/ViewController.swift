//
//  ViewController.swift
//  RPS
//
//  Created by Student on 2020-04-16.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    var currentGameState: GameState = GameState.start
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetGame()
    }
    func resetGame () {
        computerLabel.text = "🤖"
        statusLabel.text = "Rock, Paper, Scissors?"
        rockButton .isHidden = false
        rockButton .isEnabled = true
        paperButton .isHidden = false
        paperButton .isEnabled = true
        scissorsButton .isHidden = false
        scissorsButton .isEnabled = true
        playAgainButton .isHidden = true
    }
    
    func play (_ playerTurn:Sign) {
        rockButton .isEnabled = false
        scissorsButton .isEnabled = false
        paperButton .isEnabled = false
        
        let opponent = randomSign()
        computerLabel.text = opponent.emoji
        
        currentGameState = playerTurn.Turn(opponent)
        
        switch currentGameState {
        case .draw:
            statusLabel.text = "It's a draw."
        case .win:
            statusLabel.text = "You win!"
        case .lose:
            statusLabel.text = "Sorry, you lose."
        case .start:
            statusLabel.text = "Rock, Paper, Scissors?"
        }
        switch playerTurn {
        case .rock:
            rockButton.isHidden = false
            scissorsButton.isHidden = true
            paperButton .isHidden = true
        case .paper:
            rockButton.isHidden = true
            scissorsButton.isHidden = true
            paperButton .isHidden = false
        
        case .scissors:
            rockButton.isHidden = true
            scissorsButton.isHidden = false
            paperButton .isHidden = true
            
        }
        playAgainButton.isHidden = false
    }

    @IBAction func playAgainChosen(_ sender: Any) {
        resetGame()
    }
    
    @IBAction func rockChosen(_ sender: Any) {
        play(Sign.rock)
    }
    
    @IBAction func paperChosen(_ sender: Any) {
        play(Sign.paper)
    }
    
    @IBAction func scissorsChosen(_ sender: Any) {
        play(Sign.scissors)
    }
}

