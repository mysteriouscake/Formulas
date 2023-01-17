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
    var body: some View {
        VStack{
            Text("Area for Quadrilaterals")
                .font(.title)
                .padding()
        }
    }
}

struct rectangleview_Previews: PreviewProvider {
    static var previews: some View {
        rectangleview()
    }
}
