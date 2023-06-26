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
        Text("Formulas")
            .padding()
            .font(.largeTitle)
            .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
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
