//
//  quadview.swift
//  quadratic
//
//  Created by Theodore on 11/30/22.
//

import SwiftUI
//swiftui
import AudioToolbox
//haptics
struct quadview: View {
    @State var a: Float = 0.0
    @State var b: Float = 0.0
    @State var c: Float = 0.0
    /* let disc = (b*-1)+(-4*a*c)
    let res1 = ((b*b)+sqrt(disc))/2*a
    let res2 = ((b*b)-sqrt(disc))/2*a */
    //this environment here just tells the app when it's dark mode or light mode to change assets accordingly
    @Environment(\.colorScheme) var colorScheme
    //switches from positive to negative
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
        //stupid compiler can't do big number
        //why use big formula when little formula glue together work a little bit slower
        let disc = (b * -1)+(-4*a*c)
        let res1 = ((b*b)+sqrt(disc))/2*a
        let res2 = ((b*b)-sqrt(disc))/2*a
        VStack{
            VStack {
                HStack{
                    Text("The Quadratic Formula")
                        .font(.title)
                        .padding()
                    //following buncha lines provide examples for calculations/behind the scenes
                }
                ScrollView(.horizontal){
                    Text("(\(a))*x^2+(\(a))*x+(\(c)=0")
                        .font(.headline)
                        .padding()
                }
                ScrollView(.horizontal){
                    Text("∆=(\(b))^2-4*(\(a))*(\(c))")
                        .font(.headline)
                        .padding()
                }
            }
            VStack{
                //displays result values
                Text("x1 = \(res1 /*((-1*b)+sqrt((b*b)-(4*a*c)))/(2*a)*/)")
                    .font(.custom("SF Pro", size: 20))
                Text("x2 = \(res2/*((-1*b)-sqrt((b*b)-(4*a*c)))/(2*a)*/)")
                    .font(.custom("SF Pro", size: 20))
                Text("∆ = \(disc/*(b*b)-(4*a*c)*/)")
                    .font(.custom("SF Pro", size: 20))
                    }
            VStack{
                //inputs for a, b, and c
                HStack{
                    HStack{
                        Text("A ->")
                            .fontWeight(.bold)
                        TextField("a value", value: $a, formatter: formatter(x: NumberFormatter()))
                            .padding()
                            .keyboardType(.decimalPad)
                    }
                    Button{
                        a = switchSigns(input: a)
                    } label: {
                        Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
                            .padding()
                    }
                }
                HStack{
                    HStack{
                        Text("B ->")
                            .fontWeight(.bold)
                        TextField("b value", value: $b, formatter: formatter(x: NumberFormatter()))
                            .padding()
                            .keyboardType(.decimalPad)
                    }
                    Button{
                        b = switchSigns(input: b)
                    } label: {
                        Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
                            .padding()
                    }
                }
                HStack{
                    HStack{
                        Text("C ->")
                            .fontWeight(.bold)
                        TextField("c value", value: $c, formatter: formatter(x: NumberFormatter()))
                            .padding()
                            .keyboardType(.decimalPad)
                    }
                    Button{
                        c = switchSigns(input: c)
                    } label: {
                        Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
                            .padding()
                    }
                }
            }
        }
        Spacer()
    }
}
struct quadview_Previews: PreviewProvider {
    static var previews: some View {
        quadview()
    }
}
