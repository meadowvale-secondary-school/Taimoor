//
//  Sign.swift
//  RPS
//
//  Created by Student on 2020-04-14.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign () -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .sisscors
    }
}

enum Sign {
    case rock, paper, sisscors
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .sisscors:
            return "✌️"
        }
    }
    
    
    func  takeTurn(_ opponent: Sign) ->  GameState {
        switch self {
        case .rock:
            switch opponent {
            case .rock:
                return GameState.draw
            case .paper:
                return GameState.lose
            case .sisscors:
                return GameState.win
            }
        case .paper:
            switch opponent {
            case .rock:
                return GameState.win
            case .paper:
                return GameState.draw
            case .sisscors:
                return GameState.lose
            }
            
        case .sisscors:
            switch opponent {
            case .rock:
                return GameState.lose
            case .paper:
                return GameState.win
            case .sisscors:
                return GameState.draw
            }
        }
    }
}
