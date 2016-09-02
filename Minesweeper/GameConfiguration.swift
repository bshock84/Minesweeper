//
//  GameConfiguration.swift
//  Minesweeper
//
//  Created by Ben Shockley on 9/1/16.
//  Copyright © 2016 Ben Shockley. All rights reserved.
//

import UIKit

// Protocol Declarations

protocol GameConfigurationProtocol {
    
    var gameSettings: [String: AnyObject] { get set }
    
    func storeGameSettings()
    
    func loadGameSettings()
    
}




// Class Declarations

class GameConfiguration: NSObject {

}
