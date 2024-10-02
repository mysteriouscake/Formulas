//
//  atomicabundance.swift
//  quadratic
//
//  Created by Theodore on 10/1/24.
//

import SwiftUI

struct atomicabundance: View {
    @State var masses:[Float] = []
    @State var abundances:[Float] = []
    func formatter (x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        Text("skibidi")
    }
}

#Preview {
    atomicabundance()
}
