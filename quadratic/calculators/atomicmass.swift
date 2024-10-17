//
//  atomicmass.swift
//  quadratic
//
//  Created by Theodore on 10/1/24.
//
//  never touch this unless it gets borked by an ios update
//
//  also this is just a glorified weighted average machine
//

import SwiftUI

struct atomicmass: View {
    @State var masses: [Float] = Array(repeating: 0, count: 1)
    @State var abundances: [Float] = Array(repeating: 0, count: 1)
    @State var iindex: Int = 0
    @State var result: Float = 0
    func formatter (x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack {
            HStack {
                Text("Average Atomic Mass")
                Image(systemName: "atom")
            }.font(.title)
            HStack{
                Text("Total amount of isotopes: \(iindex)")
            }
            HStack {
                Text("Average Mass = \(result)")
                    .font(.custom("SF Pro", size: 20))
                    .padding()
                Button(action: {
                    result = 0
                    var results:[Float] = Array(repeating: 0, count: masses.endIndex)
                    //chat can we just have c style for loops
                    for i in 0 ..< masses.endIndex{
                        results[i] = masses[i]*abundances[i]
                    }
                    for ii in 0 ..< masses.endIndex{
                        result += results[ii]
                    }
                }){
                    HStack {
                        Text("Calculate")
                        Image(systemName: "function")
                    }.font(.custom("SF Pro", size: 20))
                }
            }.padding()
            HStack{
                Button(action: {
                    masses.append(0)
                    abundances.append(0)
                    iindex+=1
                }){
                    Text("Add Isotope")
                }
                Button(action: {
                    masses.removeLast()
                    abundances.removeLast()
                    iindex-=1
                }){
                    Text("Remove Isotope")
                }
            }.padding()
            ForEach(0 ..< iindex, id: \.self){ iindex in
                HStack{
                    HStack{
                        Text("#\(iindex) Mass: ")
                        TextField("Isotope 1", value: $masses[iindex], formatter: formatter(x: NumberFormatter()))
                            .keyboardType(.decimalPad)
                    }
                    HStack{
                        Text("#\(iindex) Abundance: ")
                        TextField("Isotope 1", value: $abundances[iindex], formatter: formatter(x: NumberFormatter()))
                            .keyboardType(.decimalPad)
                    }
                }.padding()
            }
            Spacer()
        }.padding()
    }
}

struct atomicmass_Previews: PreviewProvider {
    static var previews: some View {
        atomicmass()
    }
}
