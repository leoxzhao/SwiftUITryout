//
//  BordersDemoView.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-19.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI

struct MyViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .font(.largeTitle)
            .cornerRadius(10)
    }
}

struct BordersDemoView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text Rectangle Border")
                .font(.largeTitle)
                .padding()
                .border(Color.black)
            Text("Border + Radius")
                .font(.largeTitle)
                .padding()
                .border(Color.red, width: 3)
                .cornerRadius(15)
            Text("Overlay")
                .font(.largeTitle)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                )
            Text("Dashed Border")
                .font(.largeTitle)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(style: StrokeStyle(lineWidth: 4, dash: [15.0]))
                )
            Image(systemName: "power")
                .font(.system(size: 56.0))
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 2.0)
                )
            Text("Modifier")
                .modifier(MyViewModifier())
        }
    }
}

struct BordersDemoView_Previews: PreviewProvider {
    static var previews: some View {
        BordersDemoView()
    }
}
