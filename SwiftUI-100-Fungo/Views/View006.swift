//
//  View006.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

struct View006: View {
    var body: some View {
        VStack {
            Image(.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            Text("Snorlax is the most popular Pokemon")
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Snorlax")
    }
    
//    var body: some View {
//        NavigationStack {
//            VStack {
//                Image(.icon)
//                    .resizable()
//                    .frame(width: 150, height: 150)
//
//                Text("Snorlax is the most plpular Pokemon")
//            }
//            .navigationBarTitleDisplayMode(.large)
//            .navigationTitle("Snorlax")
//        }
//    }
}

#Preview {
    NavigationView {
        View006()
    }
}
