//
//  slopeview.swift
//  quadratic
//
//  Created by Theodore on 11/30/22.
//

import SwiftUI
//swiftui
struct slopeview: View {
    //vars
    @State var xOne: Float = 0.0
    @State var xTwo: Float = 0.0
    @State var yOne: Float = 0.0
    @State var yTwo: Float = 0.0
    var body: some View {
        VStack{
            Text("Y-Intercept Form and Point Slope Form")
                    .font(.title)
                    .multilineTextAlignment(.trailing)
                    .padding()
            VStack{
                Text("Y-Intercept Form")
                Text("y = \((yTwo-yOne)/(xTwo-xOne))x + \(yOne-(((yTwo-yOne)/(xTwo-xOne))*xOne))")
                }
            VStack{
                Text("Point Slope Form")
                Text("y - \(yOne) = \((yTwo-yOne)/(xTwo-xOne))(x - \(xOne))")
                }
            HStack{
                VStack{
                    Text("X One = \(xOne)")
                    Text("Y One = \(yOne)")
                }.padding()
                VStack{
                    Text("X Two = \(xTwo)")
                    Text("Y Two = \(yTwo)")
                }.padding()
            }
            HStack{
                VStack{
                    TextField("X One", value: $xOne, formatter: NumberFormatter())
                    TextField("Y One", value: $yOne, formatter: NumberFormatter())
                }
                VStack{
                    TextField("X Two", value: $xTwo, formatter: NumberFormatter())
                    TextField("Y Two", value: $yTwo, formatter: NumberFormatter())
                }
            }
        }
    }
}

struct slopeview_Previews: PreviewProvider {
    static var previews: some View {
        slopeview()
    }
}
