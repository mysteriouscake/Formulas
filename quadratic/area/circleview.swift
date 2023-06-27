//
//  circleview.swift
//  quadratic
//
//  Created by Theodore on 2/9/23.
//

import SwiftUI

import AudioToolbox

struct circleview: View {
    @State var radius: Float = 0.0
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack{
            Text("Circle")
                .font(.title)
                .padding()
            VStack{
                Text("Diameter = \(radius*2)")
                    .padding()
                Text("Circumference = \(radius*2*3.14159265359)")
                    .padding()
                Text("Area = \(radius*radius*3.14159265359)")
                    .padding()
            }
            VStack{
                Text("Radius")
                TextField("Radius", value: $radius, formatter: formatter(x: NumberFormatter()))
                    .padding()
                    .keyboardType(.decimalPad)
            }
        }//vstack major
        Spacer()
    }
}
struct circleview_Previews: PreviewProvider {
    static var previews: some View {
        circleview()
    }
}
