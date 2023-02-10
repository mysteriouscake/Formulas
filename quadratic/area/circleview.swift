//
//  circleview.swift
//  quadratic
//
//  Created by Theodore on 2/9/23.
//

import SwiftUI

struct circleview: View {
    @State var radius: Float = 0.0
     //this environment here just tells the app when it's dark mode or light mode to change assets accordingly
    @Environment(\.colorScheme) var colorScheme
    //switches -/+
    func switchSigns(input: Float) -> Float{
        let output = input * -1.0
        AudioServicesPlaySystemSound(1520)
        return output
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct circleview_Previews: PreviewProvider {
    static var previews: some View {
        circleview()
    }
}
