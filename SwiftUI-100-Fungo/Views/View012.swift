//
//  View012.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

struct View012: View {
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
                    NextView012(item: item)
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        View012()
    }
}

struct NextView012: View {
    let item: String
    var body: some View {
        Text("\(item) ですね")
            .navigationBarBackButtonHidden()
            .navigationTitle(item)
            .navigationBarTitleDisplayMode(.large)
    }
}
