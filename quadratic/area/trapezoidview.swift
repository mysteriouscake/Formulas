//
//  trapezoidview.swift
//  quadratic
//
//  Created by Theodore on 2/9/23.
//

import SwiftUI

import AudioToolbox

struct trapezoidview: View {
    @State var baseA: Float = 0.0
    @State var baseB: Float = 0.0
    @State var height: Float = 0.0
    func formatter(x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct trapezoidview_Previews: PreviewProvider {
    static var previews: some View {
        trapezoidview()
    }
}
