//
//  rectangleview.swift
//  quadratic
//
//  Created by Theodore on 12/22/22.
//

import SwiftUI

import AudioToolbox

struct rectangleview: View {
    @State var length: Float = 0.0
    @State var width: Float = 0.0
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
            //title
            Text("Area/Perimeter for Quadrilaterals")
                .font(.title)
                .padding()
            HStack{
                Text("area = \(length*width)")
                    .font(.title)
                    .padding()
                Text("perimeter = \(length*2+width*2)")
                    .font(.title)
                    .padding()
            }//hstack minor
            HStack{
                Text("length = \(length)")
                    .font(.title2)
                    .padding()
                Text("width = \(width)")
                    .font(.title2)
                    .padding()
            }//hstack minor
            VStack{
                    TextField("Length", value: $length, formatter: formatter(x: NumberFormatter()))
                    TextField("Width", value: $width, formatter: formatter(x: NumberFormatter()))
            }//vstack tf
        }//vstack major
    }//view body
}

struct rectangleview_Previews: PreviewProvider {
    static var previews: some View {
        rectangleview()
    }
}
