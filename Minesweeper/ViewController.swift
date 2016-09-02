//
//  ViewController.swift
//  Minesweeper
//
//  Created by Ben Shockley on 8/29/16.
//  Copyright © 2016 Ben Shockley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let gameBoard = GameBoard()
    let userController = GameUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameBoard.createNewGameBoard(gridSize: Point(x: 10, y: 10))
        userController.createNewUser(userName: "bshock84", firstName: "Ben", lastName: "Shockley", age: 32)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

