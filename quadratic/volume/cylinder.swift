//
//  cylinder.swift
//  quadratic
//
//  Created by Theodore on 6/27/23.
//

import SwiftUI

struct cylinder: View {
    @State var radius: Float = 0.0
    @State var height: Float = 0.0
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack{
            Text("Cylinder Volume")
                .padding()
                .font(.title)
            Text("Volume: \((radius*radius*3.14159)*height)")
                .padding()
                .font(.headline)
            HStack{
                Text("Radius ->")
                    .fontWeight(.bold)
                TextField("Radius", value: $radius, formatter: formatter(x: NumberFormatter()))
                    .padding()
                    .keyboardType(.decimalPad)
            }
            HStack{
                Text("Height ->")
                    .fontWeight(.bold)
                TextField("Height", value: $height, formatter: formatter(x: NumberFormatter()))
                    .padding()
                    .keyboardType(.decimalPad)
            }
        }
        Spacer()
    }
}

struct cylinder_Previews: PreviewProvider {
    static var previews: some View {
        cylinder()
    }
}
