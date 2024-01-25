//
//  Home.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(views, id: \.name) { viewData in
                NavigationLink(destination: viewData.view) {
                    Text(viewData.name)
                }
            }
            .navigationTitle("SwiftUI100本ノック")
        }
    }
}

#Preview {
    HomeView()
}
