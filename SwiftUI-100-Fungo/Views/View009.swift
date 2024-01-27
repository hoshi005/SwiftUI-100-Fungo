//
//  View009.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

struct View009: View {
    @State private var value = "hoge"
    var body: some View {
        Text(value)
        Button("Tap Me !!") {
            value = "fuga"
        }
    }
}

#Preview {
    View009()
}

//struct ContentView: View {
//    @State var text = "Snorlax"
//
//    var body: some View {
//        VStack {
//            Text(text)
//            Button(action: {
//                text = "Forever"
//            }) {
//                Text("Tap Me!!")
//            }
//        }
//    }
//}
