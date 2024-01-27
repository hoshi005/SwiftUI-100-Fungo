//
//  View013.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

struct View013: View {
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
        .listStyle(.plain)
        .navigationTitle("13. Listのスタイルを変更する")
    }
}

#Preview {
    View013()
}
