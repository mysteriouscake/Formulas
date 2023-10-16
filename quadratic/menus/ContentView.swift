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
        //TODO: separate list view for calculators
        NavigationStack{
            List{
                NavigationLink("Quadratic", destination: quadview())
                NavigationLink("Slope", destination: slopeview())
                NavigationLink("Pythagoras", destination: pythagoras())
                NavigationLink("Combinations", destination: combination())
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
