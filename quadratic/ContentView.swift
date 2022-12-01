//
//  ContentView.swift
//  quadratic
//
//  Created by Theodore on 11/1/22.
//

import SwiftUI
//swiftui
import AudioToolbox
//haptics, baby

struct ContentView: View {
    //simulating ax^2+bx+c=0
    @State var a: Float = 0.0
    @State var b: Float = 0.0
    @State var c: Float = 0.0
    //this environment here just tells the app when it's dark mode or light mode to change assets accordingly
    @Environment(\.colorScheme) var colorScheme
    //switches from positive to negative
    func switchSigns(input: Float) -> Float{
        let output = input * -1.0
        AudioServicesPlaySystemSound(1520)
        return output
    }
    var body: some View {
        VStack {
            HStack{
                Text("The Quadratic Formula")
                    .font(.title)
                    .padding()
                //now this is navigation
                //NavigationStack(path: <#T##SwiftUI.Binding<SwiftUI.NavigationPath>#>, root: <#T##() -> Root#>)
                    //following buncha lines provide examples for calculations/behind the scenes
            }
            ScrollView(.horizontal){
                Text("(\(a))*x^2+(\(a))*x+(\(c)=0")
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
                    //displays values entered for readability/accuracy
                    Text("A = \(a)")
                        .font(.custom("SF Pro", size: 20))
                    Text("B = \(b)")
                        .font(.custom("SF Pro", size: 20))
                    Text("C = \(c)")
                        .font(.custom("SF Pro", size: 20))
                }
                VStack{
                    //displays result values
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
            //inputs for a, b, and c
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
