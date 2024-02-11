//
//  View029.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

struct View029: View {
    @State private var showSheet = false
    var body: some View {
        Button("sheet") {
            showSheet.toggle()
        }
        .fullScreenCover(isPresented: $showSheet) {
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
    View029()
}
