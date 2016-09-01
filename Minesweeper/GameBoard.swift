//
//  GameBoard.swift
//  Minesweeper
//
//  Created by Ben Shockley on 8/29/16.
//  Copyright © 2016 Ben Shockley. All rights reserved.
//

import UIKit
import GameKit
import Foundation


//Protocol Declarations

protocol GameBoardProtocol {
    
    var gameBoardGrid: [Point] { get set }
    
    func createNewGameBoard(gridSize: Point)
    
    
}


//Struct Declarations



struct Point: Any {
    let x: Int
    let y: Int
    var bomb: Bool = false
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}


//Class Declarations

class GameBoard: NSObject, GameBoardProtocol {
    
    var gameBoardGrid: [Point] = []
    var bombPosX: [Int] = []
    var bombPosY: [Int] = []
    
    func createNewGameBoard(gridSize: Point) {
        
        
        for pointX in 0...gridSize.x {
            for pointY in 0...gridSize.y {
                gameBoardGrid.append(Point(x: pointX, y: pointY))
            }
        }
        
        placeBombsInGameBoard(columns: gridSize.x, rows: gridSize.y)
        
        for point in gameBoardGrid {
            print("\n \(point)")
        }
    }
    
    private func placeBombsInGameBoard(columns: Int, rows: Int) {
        let numberOfBombs = columns * rows / 3
        var bombPositionArray: [Int] = []
        
        while bombPositionArray.count < numberOfBombs {
            bombPositionArray.append(GKRandomSource.sharedRandom().nextInt(withUpperBound: gameBoardGrid.count))
        }
        
        for bombPosition in bombPositionArray {
            for (index, _) in gameBoardGrid.enumerated() {
                if bombPosition == index {
                    gameBoardGrid[index].bomb = true
                }
            }
        }
    }
}
