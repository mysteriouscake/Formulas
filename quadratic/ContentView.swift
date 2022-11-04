//
//  ContentView.swift
//  quadratic
//
//  Created by Theodore on 11/1/22.
//

import SwiftUI

struct ContentView: View {
    //we simulating dat ax^2+bx+c=0
    @State var a: Float = 0.0
    @State var b: Float = 0.0
    @State var c: Float = 0.0
    @State var xOne: Float = 0.0
    @State var xTwo: Float = 0.0
    func switchSigns(input: Float) -> Float{
        let output = input * -1.0
        return output
    }
    var body: some View {
        VStack {
            Text("The Quadratic Formula")
                .font(.title)
                .padding()
            Text("(\(a))*x^2+(\(b))*x+(\(c))=0")
                .font(.custom("SF Pro", size: 16))
                .padding()
            Text("∆=(\(b))^2-4*(\(a))*(\(c))")
                .font(.custom("SF Pro", size: 16))
                .padding()
            Spacer(minLength: 1)
        }
        HStack{
            VStack{
                Text("A = \(a)")
                    .font(.title)
                Text("B = \(b)")
                    .font(.title)
                Text("C = \(c)")
                    .font(.title)
            }
            VStack{
                Text("x1 = \(((-1*b)+sqrt((b*b)-(4*a*c)))/(2*a))")
                    .font(.title)
                Text("x2 = \(((-1*b)-sqrt((b*b)-(4*a*c)))/(2*a))")
                    .font(.title)
                Text("∆ = \((b*b)-(4*a*c))")
                    .font(.title)
            }
        }
        VStack{
            HStack{
                TextField("a value", value: $a, formatter: NumberFormatter())
                    .keyboardType(UIKeyboardType.decimalPad)
                    .padding()
                Button{
                    a = switchSigns(input: a)
                } label: {
                    Text("+/-")
                        .padding()
                }
            }
            HStack{
                TextField("b value", value: $b, formatter: NumberFormatter())
                    .keyboardType(UIKeyboardType.decimalPad)
                    .padding()
                Button{
                    b = switchSigns(input: b)
                } label: {
                    Text("+/-")
                        .padding()
                }
            }
            HStack{
                TextField("c value", value: $c, formatter: NumberFormatter())
                    .keyboardType(UIKeyboardType.decimalPad)
                    .padding()
                Button{
                    c = switchSigns(input: c)
                } label: {
                    Text("+/-")
                        .padding()
                }
            }

            }
        Spacer(minLength: 150)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

