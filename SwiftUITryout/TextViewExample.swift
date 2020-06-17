//
//  TextViewExample.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-17.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI

struct TextViewExample: View {
    @State var text: String = """
        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    """
    var body: some View {
        VStack {
            Text("Hello,") + Text("World!").foregroundColor(.red)
            Text(text)
            TextView(text: $text).background(Rectangle().foregroundColor(.gray))
        }
    }
}

struct TextViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TextViewExample()
    }
}
