//
//  rectprism.swift
//  quadratic
//
//  Created by Theodore on 6/26/23.
//

import SwiftUI

struct rectprism: View {
    @State var length: Float = 0.0
    @State var width: Float = 0.0
    @State var height: Float = 0.0
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack{
            Text("Rectangular Prism Volume")
                .padding()
                .font(.title)
            Text("Volume: \(length*width*height)")
                .padding()
                .font(.headline)
            VStack{
                Text("Length")
                TextField("Length", value: $length, formatter: formatter(x: NumberFormatter()))
                    .padding()
                    .keyboardType(.decimalPad)
            }
            VStack{
                Text("Width")
                TextField("Width", value: $width, formatter: formatter(x: NumberFormatter()))
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

struct rectprism_Previews: PreviewProvider {
    static var previews: some View {
        rectprism()
    }
}
