//
//  trapezoidview.swift
//  quadratic
//
//  Created by Theodore on 2/9/23.
//

import SwiftUI

import AudioToolbox

struct trapezoidview: View {
    @State var baseA: Float = 0.0
    @State var baseB: Float = 0.0
    @State var height: Float = 0.0
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack{
            Text("Trapezoid Area")
                .padding()
                .font(.title)
            Text("Area: \(((baseA+baseB)/2)*height)")
            VStack{
                Text("Base A")
                TextField("Base 1", value: $baseA, formatter: formatter(x: NumberFormatter()))
                    .padding()
                    .keyboardType(.decimalPad)
            }
            VStack{
                Text("Base B")
                TextField("Base 2", value: $baseB, formatter: formatter(x: NumberFormatter()))
                    .padding()
                    .keyboardType(.decimalPad)
            }
            VStack{
                Text("Height")
                TextField("Height", value: $height, formatter: formatter(x: NumberFormatter()))
                    .padding()
                    .keyboardType(.decimalPad)
            }//vstack text
        }//vstack app
    }
}

struct trapezoidview_Previews: PreviewProvider {
    static var previews: some View {
        trapezoidview()
    }
}
