//
//  ContentView.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-15.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI

class UserSettings: ObservableObject {
    var preferredColor = Color.red
}

struct ContentView: View {
    @State var users: [User] = testData()
    
    // You should only access a state property from inside the view’s body,
    // or from methods called by it. For this reason,
    // declare your state properties as private, to prevent clients of
    // your view from accessing it.
    // It is safe to mutate state properties from any thread.
    @State private var currentUser: String? = "Leo"
    @EnvironmentObject var settings: UserSettings
    
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.currentUser = "Leo\(Int.random(in: 0...10))"
                    self.settings.preferredColor = Color.orange
                }) {
                    Text("Hightlight")
                }
                NavigationLink(destination: TextViewExample()) {
                    Text("Text View")
                }
                NavigationLink(destination: GesturesView()) {
                    Text("Gestures")
                }
                NavigationLink(destination: TableViewController(users: self.$users)) {
                    Text("TableViewController")
                }
                NavigationLink(destination: BordersDemoView()) {
                    Text("Borders")
                }
                NavigationLink(destination: GroupView()) {
                    Text("Group").foregroundColor(self.settings.preferredColor)
                }
                List(users) { user in
                    UserCell(user: user, isActive: self.currentUser == user.firstName)
                }
            }.navigationBarTitle(Text("Users"))

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
    let isActive: Bool
    
    var body: some View {
        NavigationLink(destination: Text(user.firstName)) {
            Image(systemName: "photo")
            HStack {
                Text(user.firstName)
                    .foregroundColor(self.isActive ? .red : .black)
                Text(user.lastName)
            }
        }
        .background(self.isActive ? Rectangle().foregroundColor(.gray) : nil)
    }
}
