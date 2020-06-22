//
//  UserProfileView.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-17.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI

struct UserProfileView: View {
    @State var user: User
    var body: some View {
        VStack {
            Text("SwiftUI:")
                .font(.largeTitle)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 2)
                )
            Spacer()
                .frame(height: 20)
            HStack {
                Text(user.firstName)
                Text(user.lastName)
            }
                .padding()
                .border(Color.orange)
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(user: User(firstName: "Leo", lastName: "Zhao"))
    }
}
