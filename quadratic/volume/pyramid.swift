//
//  pyramid.swift
//  quadratic
//
//  Created by Theodore on 6/26/23.
//

import SwiftUI

struct pyramid: View {
    @State var length: Float = 0.0
    @State var width: Float = 0.0
    @State var height: Float = 0.0
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack{
            Text("Pyramid Volume")
                .padding()
                .font(.title)
            Text("Volume: \((length*width*height)/3.0)")
                .padding()
                .font(.headline)
            HStack{
                Text("Length ->")
                    .fontWeight(.bold)
                TextField("Length", value: $length, formatter: formatter(x: NumberFormatter()))
                    .padding()
                    .keyboardType(.decimalPad)
            }
            HStack{
                Text("Width ->")
                    .fontWeight(.bold)
                TextField("Width", value: $width, formatter: formatter(x: NumberFormatter()))
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

struct pyramid_Previews: PreviewProvider {
    static var previews: some View {
        pyramid()
    }
}
