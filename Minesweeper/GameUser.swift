//
//  GameUser.swift
//  Minesweeper
//
//  Created by Ben Shockley on 9/1/16.
//  Copyright © 2016 Ben Shockley. All rights reserved.
//

import UIKit
import Foundation

// Protocol Declarations

protocol UserProtocol {
    var userName: String { get set }
    var firstName: String { get set }
    var lastName: String? { get set}
    var age: Int? { get set }
    var runningScore: Int { get set }
    
}

// Struct Declarations

struct User: UserProtocol {
    var userName: String
    var firstName: String
    var lastName: String?
    var age: Int?
    var runningScore: Int = 0
    
}

// Class Declarations

class GameUser: NSObject {
    

    let storage = UserDefaults.standard
    
    func createNewUser(userName: String, firstName: String, lastName: String?, age: Int?) {
        
        // Force unwrapping the userList variable here because the nil checks are done in the loadUserList() function
        // so this should never be nil.  It should always be a dictionary with items in it, or an empty dictionary.
        var userList: [String: User] = loadUserLIst()!
        
        let keys = userList.keys
        
        for key in keys {
            if key == userName {
                print("That user name has already been taken, please choose another \n")
            }
        }
        userList[userName] = User(userName: userName, firstName: firstName, lastName: lastName, age: age, runningScore: 0)
        saveUserList(userList: userList)
        
    }
    
    func saveUserList(userList: [String: User]?) {
        storage.set(userList as? AnyObject, forKey: "userList")
        print("User list has been saved to storage \n")
    }
    
    func loadUserLIst() -> [String: User]? {
        guard let userList: [String: User] = storage.object(forKey: "userList") as! [String: User]? else {
            print("User list does not exist in storage \n")
            let userList: [String: User] = [ : ]
            return userList
        }
        print(userList)
        return userList
    }
    
    func removeUser(userName: String) {
        
    }
}

