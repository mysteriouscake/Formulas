//
//  combination.swift
//  quadratic
//
//  Created by Theodore on 7/25/23.
//

import SwiftUI

struct combination: View {
    @State var n: Int = 5
    @State var r: Int = 2
    @State var result: Int = 0
    func fact (input: Int) -> Int{
        var out: Int = 1
        let userinput = input
        for i in 1...userinput{
            out &*= i
            //STILL UNSAFE AAAAAAAAAAAAA
        }
        return out
    }
    func formatter (x: NumberFormatter) -> Formatter{
        x.usesSignificantDigits = true
        return x
    }
    var body: some View {
        VStack {
            Text("Combinations")
                .font(.title)
                .padding()
            HStack {
                Button(action:{
                    if(n>=r && r>=0){
                        result = fact(input: n) / (fact(input: r) &* fact(input: (n-r)))
                    }
                }){
                    Label("Calculate", systemImage: "function")
            }
                Text("\(result) possible combinations")
                    .font(.headline)
            }
            
            HStack{
                Text("Population ->")
                    .fontWeight(.bold)
                TextField("Population", value: $n, formatter: formatter(x: NumberFormatter()))
                    .keyboardType(.numberPad)
            }
            HStack{
                Text("Sample ->")
                    .fontWeight(.bold)
                TextField("Sample", value: $r, formatter: formatter(x: NumberFormatter()))
                    .keyboardType(.numberPad)
            }
        }//vstack major
        Spacer()
    }
}

struct combination_Previews: PreviewProvider {
    static var previews: some View {
        combination()
    }
}
