//
//  View030.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

struct View030: View {
    var body: some View {
        Text("hoge")
            .navigationTitle("View 030")
            .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        View030()
    }
}
