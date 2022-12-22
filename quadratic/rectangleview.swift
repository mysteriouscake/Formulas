//
//  rectangleview.swift
//  quadratic
//
//  Created by Theodore on 12/22/22.
//

import SwiftUI

struct rectangleview: View {
    @State var length: Float = 0.0
    @State var width: Float = 0.0
    var body: some View {
        Text("Area for Quadrilaterals")
    }
}

struct rectangleview_Previews: PreviewProvider {
    static var previews: some View {
        rectangleview()
    }
}
