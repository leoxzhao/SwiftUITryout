//
//  User.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-15.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import Foundation

struct User: Identifiable {
    var id: String {
        firstName + lastName
    }
    
    let firstName: String
    let lastName: String
}

func testData() -> [User] {
    return [
        User(firstName: "Leo", lastName: "Z"),
        User(firstName: "Leo1", lastName: "Z"),
        User(firstName: "Leo2", lastName: "Z"),
        User(firstName: "Leo3", lastName: "Z"),
        User(firstName: "Leo4", lastName: "Z")
    ]
}

