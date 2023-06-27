//
//  triangleview.swift
//  quadratic
//
//  Created by Theodore on 2/9/23.
//

import SwiftUI

import AudioToolbox

struct triangleview: View {
    @State var base: Float = 0.0
    @State var height: Float = 0.0
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack{
            Text("Triangle")
                .font(.title)
                .padding()
            Text("Area: \(base*height*0.5)")
                .padding()
                .font(.headline)
            VStack{
                VStack{
                    Text("Base")
                    TextField("Base", value: $base, formatter: formatter(x: NumberFormatter()))
                        .padding()
                        .keyboardType(.decimalPad)
                }
                VStack{
                    Text("Height")
                    TextField("Height", value: $height, formatter: formatter(x: NumberFormatter()))
                        .padding()
                        .keyboardType(.decimalPad)
                }
            }
        }
        Spacer()
    }
}

struct triangleview_Previews: PreviewProvider {
    static var previews: some View {
        triangleview()
    }
}
