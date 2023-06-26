//
//  volview.swift
//  quadratic
//
//  Created by Theodore on 2/11/23.
//

import SwiftUI

struct volview: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Rectangular Prism", destination: rectprism())
            }
        }
    }
}

struct volview_Previews: PreviewProvider {
    static var previews: some View {
        volview()
    }
}
