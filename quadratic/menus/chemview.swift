//
//  chemview.swift
//  quadratic
//
//  Created by Theodore on 10/6/24.
//

import SwiftUI

struct chemview: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Average Atomic Mass", destination: atomicmass())
                //NavigationLink("Atomic Abundance", destination: atomicabundance())
            }
        }
    }
}

#Preview {
    chemview()
}
