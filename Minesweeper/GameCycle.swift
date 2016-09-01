//
//  GameCycle.swift
//  Minesweeper
//
//  Created by Ben Shockley on 9/1/16.
//  Copyright © 2016 Ben Shockley. All rights reserved.
//

import UIKit
//Protocol Declarations

protocol GameCycleProtocol {
    var user: String? { get set }
    var turn: Int { get set }
    var gameTime: NSDate? { get set }
    
    func newGame()
    
    func gameOver()
    
    
    
}

// Class Declarations

class GameCycle: NSObject, GameCycleProtocol {
    var user: String? = nil
    var turn: Int = 0
    var gameTime: NSDate? = nil
    
    func newGame() {
        
    }
    
    func gameOver() {
        
    }
}
