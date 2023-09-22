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
    var email: String
    var registrationDate: Date

    init(id: UUID = UUID(),
         username: String,
         email: String,
         registrationDate: Date = Date()) {
        self.id = id
        self.username = username
        self.email = email
        self.registrationDate = registrationDate
    }
}
