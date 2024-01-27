//
//  View011.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

struct View011: View {
    let items = [
        "ちさと",
        "たきな",
        "クルミ",
        "ミズキ",
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                NavigationLink("\(item) だよ") {
                    NextView011(item: item)
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        View011()
    }
}

struct NextView011: View {
    let item: String
    var body: some View {
        Text("\(item) ですね")
    }
}
