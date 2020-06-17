//
//  TextView.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-17.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI
import UIKit

struct TextView: UIViewRepresentable {
    @Binding var text: String

    func makeCoordinator() -> TextViewCoordinator {
        return TextViewCoordinator(text: $text)
    }
    
    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.delegate = context.coordinator
        return view
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }    
}

class TextViewCoordinator: NSObject, UITextViewDelegate {
    @Binding var text: String

    init(text: Binding<String>) {
        _text = text
    }
    
    func textViewDidChange(_ textView: UITextView) {
        text = textView.text
    }
}
