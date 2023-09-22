//
//  User.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//

import Foundation

class User {
    let id: UUID
    var username: String
    var userage: String

    init(id: UUID = UUID(),
         username: String = "르탄이",
         userage: String = "5세") { 
        self.id = id
        self.username = username
        self.userage = userage
    }
}
