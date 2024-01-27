//
//  View008.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

struct View008: View {
    var body: some View {
        TabView(
            selection: .constant(2),
            content:  {
                ForEach(0...2, id: \.self) { num in
                    TabItemView(num: num)
                }
            }
        )
    }
}

#Preview {
    View008()
}

struct TabItemView: View {
    var num: Int
    var body: some View {
        Text("Tab Content \(num)")
            .tabItem {
                VStack {
                    Image(systemName: "\(num).square")
                    Text("Label \(num)")
                }
            }
            .tag(num)
    }
}


//struct ContentView: View {
//    var body: some View {
//        TabView {
//            Text("First Tab")
//                .tabItem {
//                    Image(systemName: "1.square.fill")
//                    Text("First")
//                }
//            Text("Second Tab")
//                .tabItem {
//                    Image(systemName: "2.square.fill")
//                    Text("Second")
//                }
//            Text("Third Tab")
//                .tabItem {
//                    Image(systemName: "3.square.fill")
//                    Text("Third")
//                }
//        }
//        .font(.headline)
//    }
//}
