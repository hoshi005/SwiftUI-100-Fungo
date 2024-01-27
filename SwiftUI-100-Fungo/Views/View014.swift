//
//  View014.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

struct View014: View {
    @State private var isShowAlert = false
    var body: some View {
        Button("Show Alert") {
            isShowAlert.toggle()
        }
        .alert(isPresented: $isShowAlert) {
            Alert(title: Text("アラートだよ"))
        }
    }
}

#Preview {
    View014()
}

//struct ContentView: View {
//    @State var showingAlert = false
//
//    var body: some View {
//        VStack {
//            Button {
//                showingAlert = true
//            } label: {
//                Text("Show Alert")
//            }
//        }
//        .alert("Alert Title", isPresented: $showingAlert) {
//            Button("Done", role: .none) {
//                print("Done")
//            }
//            Button("Cancel", role: .cancel) {
//                print("Cancel")
//            }
//        } message: {
//            Text("Message")
//        }
//    }
//}
