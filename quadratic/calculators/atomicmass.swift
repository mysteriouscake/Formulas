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
            .font(.custom("SF Pro", size: 20))
            .padding()
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
