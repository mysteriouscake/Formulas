//
//  sphere.swift
//  quadratic
//
//  Created by Theodore on 6/28/23.
//

import SwiftUI

struct sphere: View {
    @State var radius: Float = 0.0
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack{
            Text("Sphere Volume")
                .padding()
                .font(.title)
            Text("Volume: \(1.3333333*3.14159*radius*radius*radius)")
                .padding()
                .font(.headline)
            HStack{
                Text("Radius ->")
                    .fontWeight(.bold)
                TextField("Radius", value: $radius, formatter: formatter(x: NumberFormatter()))
                    .padding()
                    .keyboardType(.decimalPad)
            }
        }
        Spacer()
    }
}

struct sphere_Previews: PreviewProvider {
    static var previews: some View {
        sphere()
    }
}
