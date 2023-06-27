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
            VStack{
                Text("Length")
                TextField("Length", value: $length, formatter: formatter(x: NumberFormatter()))
            }
            VStack{
                Text("Width")
                TextField("Width", value: $width, formatter: formatter(x: NumberFormatter()))
            }
            VStack{
                Text("Height")
                TextField("Height", value: $height, formatter: formatter(x: NumberFormatter()))
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
