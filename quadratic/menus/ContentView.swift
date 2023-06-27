//
//  ContentView.swift
//  quadratic
//
//  Created by Theodore on 11/1/22.
//

import SwiftUI
//swiftui

struct ContentView: View {
    var body: some View {
        //now this is navigation
        NavigationStack{
            List{
                NavigationLink("Quadratic", destination: quadview())
                NavigationLink("Slope", destination: slopeview())
                NavigationLink("Areas", destination: areaview())
                NavigationLink("Volumes", destination: volview())
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
