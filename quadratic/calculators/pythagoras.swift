//
//  pythagoras.swift
//  quadratic
//
//  Created by Theodore on 6/29/23.
//

import SwiftUI

struct pythagoras: View {
    @State var a: Float = 0.0
    @State var b: Float = 0.0
    @State var c: Float = 0.0
    func formatter (x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    func pow (num: Float, pow: Int) -> Float{
        var n = num
        var i = 0
        repeat{
            n *= num
            i += 1
        }while (i < pow - 1)
        return n
    }
    var body: some View {
        VStack{
            Text("Pythagorean Theorem")
                .font(.title)
            Text("Side A: \(sqrt(pow(num: c, pow: 2) - pow(num: b, pow: 2)))")
                .font(.headline)
            Text("Side B: \(sqrt(pow(num: c, pow: 2) - pow(num: a, pow: 2)))")
                .font(.headline)
            Text("Side C: \(sqrt(pow(num: a, pow: 2) + pow(num: b, pow: 2)))")
                .font(.headline)
            HStack{
                Text("Side A ->")
                    .fontWeight(.bold)
                TextField("Side A", value: $a, formatter: formatter(x: NumberFormatter()))
                    .keyboardType(.decimalPad)
            } .padding()
            HStack{
                Text("Side B ->")
                    .fontWeight(.bold)
                TextField("Side B", value: $b, formatter: formatter(x: NumberFormatter()))
                    .keyboardType(.decimalPad)
            } .padding()
            HStack{
                Text("Side C ->")
                    .fontWeight(.bold)
                TextField("Side C", value: $c, formatter: formatter(x: NumberFormatter()))
                    .keyboardType(.decimalPad)
            } .padding()
        }
        Spacer()
    }
}

struct pythagoras_Previews: PreviewProvider {
    static var previews: some View {
        pythagoras()
    }
}
