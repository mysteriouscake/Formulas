//
//  atomicmass.swift
//  quadratic
//
//  Created by Theodore on 10/1/24.
//

import SwiftUI

class atomicmassvars: ObservableObject{
    @Published var masses:[Float] = [0]
    @Published var abundances:[Float] = [0]
    @Published var index:Int = 0
}

func formatter (x: NumberFormatter) -> Formatter{
    x.usesSignificantDigits = true
    return x
}

struct atomicmassub: View{
    @EnvironmentObject var data:atomicmassvars
    @State var index: Int = 0
    var body: some View{
        HStack{
            HStack{
                Text("#\(data.index) Mass: ")
                TextField("Isotope 1", value: $data.masses[data.index], formatter: formatter(x: NumberFormatter()))
                .keyboardType(.decimalPad)
            }
            HStack{
                Text("#\(data.index) Abundance: ")
                TextField("Isotope 1", value: $data.abundances[data.index], formatter: formatter(x: NumberFormatter()))
                .keyboardType(.decimalPad)
            }
        }
    }
}

struct atomicmass: View {
    @StateObject var data = atomicmassvars()
    @State var result: Float = 0
    var body: some View {
        VStack {
            HStack {
                Text("Average Atomic Mass")
                Image(systemName: "atom")
            }.font(.title)
            HStack{
                Text("Total amount of isotopes: \(data.index)")
                //Text("Abundances: \(data.abundances.endIndex)")
            }
            HStack {
                Text("Average Mass = \(result)")
                    .font(.custom("SF Pro", size: 20))
                    .padding()
                Button(action: {
                    result = 0
                    var results:[Float] = Array(repeating: 0, count: data.masses.endIndex)
                    //chat can we just have c style for loops
                    for i in 0 ..< data.masses.endIndex{
                        results[i] = data.masses[i]*data.abundances[i]
                    }
                    for ii in 0 ..< data.masses.endIndex{
                        result += results[ii]
                    }
                }){
                    HStack {
                        Text("Calculate")
                        Image(systemName: "function")
                    }.font(.custom("SF Pro", size: 20))
                }
            }
            HStack{
                Button(action: {
                    data.masses.append(0)
                    data.abundances.append(0)
                    data.index+=1
                }){
                    Text("Add Isotope")
                }
                Button(action: {
                    data.masses.removeLast()
                    data.abundances.removeLast()
                    data.index-=1
                }){
                    Text("Remove Isotope")
                }
            }
            ForEach(0 ..< data.index, id: \.self){ _ in
                atomicmassub(index: data.index)
            }
            Spacer()
        }.padding()
            .environmentObject(data)
    }
}

#Preview {
    atomicmass()
        .environmentObject(atomicmassvars())
}
