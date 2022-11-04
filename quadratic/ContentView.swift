//
//  ContentView.swift
//  quadratic
//
//  Created by Theodore on 11/1/22.
//

import SwiftUI
import AudioToolbox

struct ContentView: View {
    //we simulating ax^2+bx+c=0
    @State var a: Float = 0.0
    @State var b: Float = 0.0
    @State var c: Float = 0.0
    @State var xOne: Float = 0.0
    @State var xTwo: Float = 0.0
    @Environment(\.colorScheme) var colorScheme
    func switchSigns(input: Float) -> Float{
        let output = input * -1.0
        AudioServicesPlaySystemSound(1520)
        return output
    }
    var body: some View {
        VStack {
            Text("The Quadratic Formula")
                .font(.title)
                .padding()
            ScrollView(.horizontal){
                Text("(\(a))*x^2+(\(b))*x+(\(c))=0")
                    .font(.custom("SF Pro", size: 16))
                    .padding()
            }
            ScrollView(.horizontal){
                Text("∆=(\(b))^2-4*(\(a))*(\(c))")
                    .font(.custom("SF Pro", size: 16))
                    .padding()
            }
            Spacer(minLength: 1)
        }
        ScrollView(.horizontal){
            HStack{
                VStack{
                    Text("A = \(a)")
                        .font(.custom("SF Pro", size: 20))
                    Text("B = \(b)")
                        .font(.custom("SF Pro", size: 20))
                    Text("C = \(c)")
                        .font(.custom("SF Pro", size: 20))
                }
                VStack{
                    Text("x1 = \(((-1*b)+sqrt((b*b)-(4*a*c)))/(2*a))")
                        .font(.custom("SF Pro", size: 20))
                    Text("x2 = \(((-1*b)-sqrt((b*b)-(4*a*c)))/(2*a))")
                        .font(.custom("SF Pro", size: 20))
                    Text("∆ = \((b*b)-(4*a*c))")
                        .font(.custom("SF Pro", size: 20))
                }
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
                    Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
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
                    Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
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
                    Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
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
