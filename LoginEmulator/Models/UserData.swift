//
//  UserData.swift
//  LoginEmulator
//
//  Created by Leon Fridman on 8/21/22.
//

import Foundation


struct Person {
    let name: String
    let surname: String
    let age: Int
    let company: String
    let title: String
    let photo: String
    let bio: String
    
    static func getPerson() -> Person {
        Person(
            name: "Leonid",
            surname: "Fridman",
            age: 19,
            company: "Madcat",
            title: "Co-owner",
            photo: "me13",
            bio: "Учиться, учиться и еще раз учиться")
    }
}

