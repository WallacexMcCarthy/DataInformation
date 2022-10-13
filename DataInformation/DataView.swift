//
//  ContentView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/11/22.
//

import SwiftUI

struct DataView: View {
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
        DataView()
    }
}
