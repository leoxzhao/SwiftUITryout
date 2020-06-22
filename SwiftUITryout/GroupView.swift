//
//  GroupView.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-19.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        List {
            Group {
                Text("Row 1")
                Text("Row 2")
                Text("Row 3")
                Text("Row 4")
                Text("Row 5")
                Text("Row 6")
            }
            // must have this Spacer in here.
            // otherwise, all those rows above will have a
            // Row 7 overlapping with them somehow.
            Spacer().frame(height: 20)
            Group {
                Text("Row 7")
                Text("Row 8")
                Text("Row 9")
                Text("Row 10")
                Text("Row 11")
            }
            
            // Section works, but there is no seperation between the Group above, and this Section.
            // It is as if Row 7 to Row 13 is continuous.
            Section {
                Text("Row 12")
                Text("Row 13")
            }
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
