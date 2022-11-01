//
//  ContentView.swift
//  quadratic
//
//  Created by Theodore on 11/1/22.
//

import SwiftUI

struct ContentView: View {
    @State var a: Float = 0.0
    @State var b: Float = 0.0
    @State var c: Float = 0.0
    @State var xOne: Float = 0.0
    @State var xTwo: Float = 0.0
    @State var delta: Float = 0.0
    var body: some View {
        VStack {
            Text("The Quadratic Formula")
                .font(.title)
                .padding()
            Text("\(a)*x^2+\(b)*x+\(c)=0")
                .font(.custom("SF Pro", size: 13))
                .padding()
            Text("∆=\(b)^2-4*\(a)*\(c)")
                .font(.custom("SF Pro", size: 13))
                .padding()
            Spacer(minLength: 1)
        }
        VStack{
            Text("x1 = \(-1*b+(sqrt(delta))/2*a)")
            Text("x2 = \(-1*b-(sqrt(delta))/2*a)")
            Text("∆ = \((b*b)-(4*a*c))")
        }
        VStack{
            TextField("a value", value: $a, formatter: NumberFormatter())
                .keyboardType(UIKeyboardType.decimalPad)
                .padding()
            TextField("b value", value: $b, formatter: NumberFormatter())
                .keyboardType(UIKeyboardType.decimalPad)
                .padding()
            TextField("c value", value: $c, formatter: NumberFormatter())
                .keyboardType(UIKeyboardType.decimalPad)
                .padding()
            }
        Spacer(minLength: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

