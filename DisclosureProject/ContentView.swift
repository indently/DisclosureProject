//
//  ContentView.swift
//  DisclosureProject
//
//  Created by Federico on 25/11/2021.
//

import SwiftUI


struct ContentView: View {
    @State private var isOpen: Bool = false

    var body: some View {
        
        VStack {
            DisclosureGroup("Pro tip #1", isExpanded: $isOpen) {
                VStack(alignment: .leading) {
                Text("More money != happiness")
                        .bold()
                Text("There's a lot that one can write in something like this. This is another sentence that we will use later.")
                }
            }
            DisclosureGroup("Pro tip #2") {
                VStack(alignment: .leading) {
                Text("More money = more problems")
                        .bold()
                Text("There's a lot that one can write in something like this. This is another sentence that we will use later.")
                }
            }
            DisclosureGroup("Pro tip #3") {
                VStack(alignment: .leading) {
                Text("More problems = less money")
                        .bold()
                Text("There's a lot that one can write in something like this. This is another sentence that we will use later.")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
