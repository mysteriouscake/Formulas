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
    @Published var index:Int = 1
}

func formatter (x: NumberFormatter) -> Formatter{
    x.usesSignificantDigits = true
    return x
}

struct atomicmassub: View{
    @StateObject var data = atomicmassvars()
    var body: some View{
        HStack{
            HStack{
                Text("Isotope \(data.index) Mass: ")
                TextField("Isotope 1", value: $data.masses[0], formatter: formatter(x: NumberFormatter()))
            }
            HStack{
                Text("Isotope 1 Abundance: ")
                TextField("Isotope 1", value: $data.abundances[0], formatter: formatter(x: NumberFormatter()))
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
                Text("Masses: \(data.masses.endIndex)")
                Text("Abundances: \(data.abundances.endIndex)")
            }
            HStack {
                Text("Average Mass = \(result)")
                    .font(.custom("SF Pro", size: 20))
                    .padding()
                Button(action: {
                    var results:[Float] = Array(repeating: 0, count: data.masses.endIndex)
                    //chat can we just have c style for loops
                    for i in 0 ..< data.masses.endIndex{
                        results[i] = data.masses[i]*data.abundances[i]
                    }
                    //var bingus: Float = 0
                    for ii in 0 ..< data.masses.endIndex{
                        result += results[ii]
                    }
                }){
                    Text("Hawk Tuah! Calculate on that Thang!")
                }
            }
            HStack{
                Button(action: {data.index+=1}){
                    Text("Add Isotope")
                }
                Button(action: {data.index-=1}){
                    Text("Remove Isotope")
                }
            }
            ForEach(0 ..< data.index, id: \.self){ _ in
                atomicmassub()
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    atomicmass()
        .environmentObject(atomicmassvars())
}
