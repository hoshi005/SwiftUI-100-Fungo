//
//  View016.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

// .buttonStyle を .plain にすることで、ボタン特有のtintを無効にできる

struct View016: View {
    @State private var value = "hoge"
    var body: some View {
        Text(value)
        Button {
            value = "fuga"
        } label: {
            HStack {
                Image(.icon)
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Tap Me !!!")
            }
            .padding()
            .border(Color.black)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    View016()
}
