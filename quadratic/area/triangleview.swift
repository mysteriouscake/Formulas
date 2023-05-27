//
//  triangleview.swift
//  quadratic
//
//  Created by Theodore on 2/9/23.
//

import SwiftUI

import AudioToolbox

struct triangleview: View {
    @State var base: Float = 0.0
    @State var height: Float = 0.0
    var body: some View {
        VStack{
            Text("Triangle")
                .font(.title)
                .padding()
            Text("Area: \(base*height*0.5)")
            HStack{
                Text("Base = \(base)")
                .padding()
                Text("Height = \(height)")
                .padding()
            }
            HStack{
                Text("Area: \(base*height*0.5)")
                .padding()
            }
            VStack{
                TextField("Base", value: $base, formatter: NumberFormatter())
                .padding()
                .keyboardType(.decimalPad)
                TextField("Height", value: $height, formatter: NumberFormatter())
                .padding()
                .keyboardType(.decimalPad)
            }
        }
    }
}

struct triangleview_Previews: PreviewProvider {
    static var previews: some View {
        triangleview()
    }
}
