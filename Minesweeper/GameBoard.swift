//
//  GameBoard.swift
//  Minesweeper
//
//  Created by Ben Shockley on 8/29/16.
//  Copyright © 2016 Ben Shockley. All rights reserved.
//

import UIKit


//Protocol Declarations

protocol GameBoardProtocol {
    
    var gameBoardGrid: [[Int]] { get set }
    
    func createNewGameBoard(numberOfRows: Int, numberOfColumns: Int)
    
    
}


//Class Declarations

class GameBoard: NSObject, GameBoardProtocol {

    var gameBoardGrid: [[Int]] = []
    
    func createNewGameBoard(numberOfRows: Int, numberOfColumns: Int) {
        
        gameBoardGrid = [[Int]](repeating: [Int](repeating: 0, count: numberOfRows), count: numberOfColumns)
        
        for array in gameBoardGrid {
            print("\n \(array)")
        }
    }
    
    private func placeBombs() {
        
    }
    
    
    
}
