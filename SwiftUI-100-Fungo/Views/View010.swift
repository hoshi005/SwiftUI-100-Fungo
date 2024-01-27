//
//  View010.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

struct View010: View {
    var body: some View {
        List {
            Section("normal") {
                Text("Normal 1")
                Text("Normal 2")
                Text("Normal 3")
            }
            Section("free") {
                Text("Free 1")
                Text("Free 2")
                Text("Free 3")
            }
        }
        .listStyle(.grouped)
    }
}

#Preview {
    View010()
}

//struct ContentView: View {
//    var body: some View {
//        List {
//            Section("Normal") {
//                Text("Meowth")
//                Text("Ditto")
//            }
//
//            Section("Fire") {
//                Text("Vulpix")
//                Text("Arcanine")
//                Text("Charmander")
//            }
//        }
//        .listStyle(.grouped)
//    }
//}
