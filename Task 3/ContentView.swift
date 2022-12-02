//
//  ContentView.swift
//  Task 3
//
//  Created by Ogabek Matyakubov on 02/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var defs = UsersDefaults()
    
    init() {
        print(defs.password)
        defs.password = "123"
        print(defs.password)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
