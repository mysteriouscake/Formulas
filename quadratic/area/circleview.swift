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
     //this environment here just tells the app when it's dark mode or light mode to change assets accordingly
    @Environment(\.colorScheme) var colorScheme
    //switches -/+
    func switchSigns(input: Float) -> Float{
        let output = input * -1.0
        AudioServicesPlaySystemSound(1520)
        return output
    }
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack{
            Text("Circle")
                .font(.title)
                .padding()
            HStack{
                Text("Diameter = \(radius*2)")
                    .font(.custom("SF Pro", size: 12))
                Text("Circumference = \(radius*2*3.14159265359)")
                    .font(.custom("SF Pro", size: 12))
                Text("Area = \(radius*radius*3.14159265359)")
                    .font(.custom("SF Pro", size: 12))
            }
            TextField("Radius", value: $radius, formatter: formatter(x: NumberFormatter()))
            }//label
        }//vstack major     
    }

struct circleview_Previews: PreviewProvider {
    static var previews: some View {
        circleview()
    }
}
