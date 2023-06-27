//
//  cone.swift
//  quadratic
//
//  Created by Theodore on 6/27/23.
//

import SwiftUI

struct cone: View {
    @State var radius: Float = 0.0
    @State var height: Float = 0.0
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack{
            Text("Cone Volume")
                .padding()
                .font(.title)
            Text("Volume: \(((radius*radius*3.14159)*height)/3)")
                .padding()
                .font(.headline)
            VStack{
                Text("Radius")
                TextField("Radius", value: $radius, formatter: formatter(x: NumberFormatter()))
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
        Spacer()
    }
}

struct cone_Previews: PreviewProvider {
    static var previews: some View {
        cone()
    }
}