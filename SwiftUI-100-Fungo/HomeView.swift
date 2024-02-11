//
//  Home.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List(views, id: \.name) { viewData in
                NavigationLink(value: viewData) {
                    Text(viewData.name)
                }
            }
            .navigationTitle("SwiftUI100本ノック")
            .navigationDestination(for: ViewData.self) { viewData in
                viewData.view()
            }
        }
    }
}

#Preview {
    HomeView()
}
