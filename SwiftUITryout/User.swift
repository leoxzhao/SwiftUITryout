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
