//
//  HomeDataParseable.swift
//  Needle1Test
//
//  Created by Leonardo Maia Pugliese on 08/07/21.
//

import Foundation

protocol UserDataParseable {
    var data: String? { get }
}

class UserData: UserDataParseable {
    var data: String? = "Ana Maia"
}
