//
//  ContentView.swift
//  SkiaSamplesiOS
//
//  Created by Miguel de Icaza on 10/26/19.
//

import SwiftUI
import SkiaKit


struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            
            SampleRender (samplePathBounds())
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
            SampleRender (samplePathBounds())
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
