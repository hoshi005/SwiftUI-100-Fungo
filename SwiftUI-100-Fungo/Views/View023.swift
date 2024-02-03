//
//  View023.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

struct View023: View {
    @State private var items = [
        "ちさと",
        "たきな",
        "クルミ",
        "ミズキ",
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                Text($0)
            }
            .onDelete {
                items.remove(atOffsets: $0)
            }
        }
        .toolbar {
            EditButton()
        }
    }
}

#Preview {
    NavigationView {
        View023()
    }
}
