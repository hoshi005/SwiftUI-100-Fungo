//
//  View018.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

// NavigationLinkを使わないでプッシュ遷移

struct View018: View {
    
    @State private var showNext = false
    
    var body: some View {
        NavigationStack {
            Button("push") {
                showNext.toggle()
            }
            .navigationDestination(isPresented: $showNext) {
                Text("BBB")
            }
        }
    }
}

#Preview {
    View018()
}
