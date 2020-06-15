//
//  ContentView.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-15.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var users: [User] = testData()
    
    var body: some View {
        NavigationView {
            List(users) { user in
                UserCell(user: user)
            }
            .navigationBarTitle(Text("Tutors"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct UserCell: View {
    let user: User
    var body: some View {
        NavigationLink(destination: Text(user.firstName)) {
            Image(systemName: "photo")
            HStack {
                Text(user.firstName)
                Text(user.lastName)
            }
        }
    }
}
