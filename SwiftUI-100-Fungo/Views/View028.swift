//
//  View028.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

struct View028: View {
    @State private var showSheet = false
    var body: some View {
        Button("sheet") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            ZStack {
                Color.gray.opacity(0.5).ignoresSafeArea()
                Button("Dismiss") {
                    showSheet.toggle()
                }
            }
        }
    }
}

#Preview {
    View028()
}
