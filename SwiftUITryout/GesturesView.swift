//
//  GesturesView.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-17.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI

struct GesturesView: View {
    @State var tapMessage: String = "Try to tap on me."
    @State var longPressMessage: String = "Try to long press on me."
    @State private var currentAmount: Angle = .degrees(0)
    @State private var finalAmount: Angle = .degrees(0)

    var body: some View {
        VStack {
            Text(tapMessage)
                .onTapGesture(count: 1) { self.tapMessage = "Tap" }
            Text(longPressMessage)
                .onLongPressGesture { self.longPressMessage = "Long Pressed" }
            Text("Rotate Me!")
                .frame(width: 100, height: 100, alignment: .center)
                .rotationEffect(currentAmount + finalAmount)
                .gesture(
                    RotationGesture()
                        .onChanged { angle in
                            self.currentAmount = angle
                        }
                        .onEnded { angle in
                            self.finalAmount += self.currentAmount
                            self.currentAmount = .degrees(0)
                        }
                )
        }
    }
}

struct GesturesView_Previews: PreviewProvider {
    static var previews: some View {
        GesturesView()
    }
}
