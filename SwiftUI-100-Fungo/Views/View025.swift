//
//  View025.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

// 関数をそのまま渡してもいいが、delegateとしてインスタンスをそのまま渡すなど

struct View025: View {
    @State private var isNext = false
    var body: some View {
        Button("Button1") {
            isNext.toggle()
        }
        .navigationTitle("View 25")
        .navigationDestination(isPresented: $isNext) {
            NextView025(onTap: hoge)
        }
    }
    
    func hoge() {
        print("hoge")
    }
}

#Preview {
    NavigationStack {
        View025()
    }
}

struct NextView025: View {
    
    let onTap: () -> Void
    
    var body: some View {
        Button(action: {
            onTap()
        }, label: {
            Text("Button2")
        })
    }
}



//import SwiftUI
//
//struct ContentView: View, MyProtocol {
//    @State var text: String = "My Text"
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text(text)
//                NavigationLink(destination: SecondView(delegate: self)) {
//                    Text("2nd View")
//                }
//            }
//        }
//    }
//
//    func myFunc() {
//        text = "Changed Text"
//    }
//}
//
//struct SecondView: View {
//    var delegate: MyProtocol
//    var body: some View {
//        Button(action: {
//            self.delegate.myFunc()
//        }) {
//            Text("ChangeText")
//        }
//    }
//}
