//
//  atomicmasssubview.swift
//  quadratic
//
//  Created by Theodore on 10/2/24.
//

import SwiftUI

struct atomicmasssubview: View {
    var body: some View {
        HStack{
            HStack{
                Text("Isotope 1 Mass: ")
                TextField("Isotope 1", value: $masses[0], formatter: formatter(x: NumberFormatter()))
            }
            HStack{
                Text("Isotope 1 Abundance: ")
                TextField("Isotope 1", value: $masses[0], formatter: formatter(x: NumberFormatter()))
            }
        }
    }
}

#Preview {
    atomicmasssubview()
}
