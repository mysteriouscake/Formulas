//
//  atomicabundance.swift
//  quadratic
//
//  Created by Theodore on 10/6/24.
//

import SwiftUI

struct atomicabundance: View {
    @State var masses:[Float] = Array(repeating: 0, count: 1)
    @State var abundances:[Float] = Array(repeating: 0, count: 1)
    func formatter (x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct atomicabundance_Previews: PreviewProvider{
    static var previews: some View{
        atomicabundance()
    }
}
