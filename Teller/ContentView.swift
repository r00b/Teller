//
//  ContentView.swift
//  Teller
//
//  Created by Robert Steilberg on 9/22/19.
//  Copyright © 2019 rhs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("Total assets")
                Text("33.9k")
                Text("+$8.29 (0.02%)")
            }
            .background(Color.red)
            Divider()
            List {
                Text("foo")
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
