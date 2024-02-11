//
//  View026.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

struct View026: View {
    
    let items = [
        "ちさと",
        "たきな",
        "クルミ",
        "ミズキ",
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                NavigationLink(value: item) {
                    Text(item)
                }
            }
        }
        .navigationTitle("View 26")
        .navigationDestination(for: String.self) { item in
            Text(item)
        }
    }
}

#Preview {
    NavigationStack {
        View026()
    }
}
