//
//  ContentView.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-15.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var users: [User] = []
    
    var body: some View {
        List(users) { user in
            HStack {
                Text(user.firstName)
                Text(user.lastName)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
