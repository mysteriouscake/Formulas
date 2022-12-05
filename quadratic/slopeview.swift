//
//  slopeview.swift
//  quadratic
//
//  Created by Theodore on 11/30/22.
//

import SwiftUI
//swiftui
import AudioToolbox
//haptiiiiiiiiics
struct slopeview: View {
    //vars
    @State var xOne: Float = 0.0
    @State var xTwo: Float = 0.0
    @State var yOne: Float = 0.0
    @State var yTwo: Float = 0.0
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
                //it's a uhhh... title lol.
                Text("Y-Intercept Form and Point Slope Form")
                    .font(.title)
                    .padding()
                VStack{
                    //example
                    Text("Y-Intercept Form")
                    Text("y = \((yTwo-yOne)/(xTwo-xOne))x + \(yOne-(((yTwo-yOne)/(xTwo-xOne))*xOne))")
                }
                VStack{
                    //yet another example
                    Text("Point Slope Form")
                    Text("y - \(yOne) = \((yTwo-yOne)/(xTwo-xOne))(x - \(xOne))")
                }
                HStack{
                    //need to know what you're doing eh?
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
                        HStack{
                            TextField("X One", value: $xOne, formatter: NumberFormatter())
                            Button{
                                xOne = switchSigns(input: xOne)
                            } label: {
                                Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
                                    .padding()
                            }
                        }
                        HStack{
                            TextField("Y One", value: $yOne, formatter: NumberFormatter())
                            Button{
                                yOne = switchSigns(input: yOne)
                            } label: {
                                Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
                                    .padding()
                            }
                        }
                    }
                    VStack{
                        HStack{
                            TextField("X Two", value: $xTwo, formatter: NumberFormatter())
                            Button{
                                xTwo = switchSigns(input: xTwo)
                            } label: {
                                Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
                                    .padding()
                            }
                        }
                        HStack{
                            TextField("Y Two", value: $yTwo, formatter: NumberFormatter())
                            Button{
                                yTwo = switchSigns(input: yTwo)
                            } label: {
                                Image(colorScheme == .dark ? "plusminus" : "plusminuslight")
                                    .padding()
                            } //label
                        }//hstack minor
                    }//vstack minor
                }//hstack major
                Spacer()
            }//vstack parent
        }
    }
    
    struct slopeview_Previews: PreviewProvider {
        static var previews: some View {
            slopeview()
        }
    }
