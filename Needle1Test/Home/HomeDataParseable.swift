//
//  HomeDataParseable.swift
//  Needle1Test
//
//  Created by Leonardo Maia Pugliese on 08/07/21.
//

import Foundation

protocol UserDataParseable {
    var data: String? { get }
    func getAditionalUserData() -> String
}

class UserData: UserDataParseable {
    func getAditionalUserData() -> String {
        return "Other User Data"
    }
    
    var data: String? = "Ana Maia"
}
