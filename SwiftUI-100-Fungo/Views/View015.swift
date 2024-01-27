//
//  View015.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

// .alert の presenting は、Alertの内容を動的に切り替えるために利用できる

struct View015: View {
    @State private var isShowAlert01 = false
    @State private var isShowAlert02 = false
    var body: some View {
        VStack {
            Button("Button 01") {
                isShowAlert01.toggle()
            }
            Button("Button 02") {
                isShowAlert02.toggle()
            }
        }
        .alert("アラート 01", isPresented: $isShowAlert01) {
            Button("OK", role: .destructive) {
                
            }
            Button("Cancel", role: .cancel) {
                
            }
        } message: {
            Text("メッセージでございます 001")
        }
        .alert("アラート 02", isPresented: $isShowAlert02) {
            Button("OK", role: .destructive) {
                
            }
            Button("Cancel", role: .cancel) {
                
            }
        } message: {
            Text("メッセージでございます 002")
        }
    }
}

#Preview {
    View015()
}


//struct ContentView: View {
//    @State var showingAlert = false
//    @State var alertItem: AlertItem?
//
//    var body: some View {
//        VStack {
//            Button {
//                alertItem = AlertItem(buttonTitle: "Pikachu", message: "Pikachu is a fictional species in the Pokémon media franchise. ")
//                showingAlert = true
//            } label: {
//                Text("Pikachu")
//            }
//
//            Button {
//                alertItem = AlertItem(buttonTitle: "Snorlax", message: "Snorlax is most popular Pokémon.")
//                showingAlert = true
//            } label: {
//                Text("Snorlax")
//            }
//        }
//        .alert("Alert Title", isPresented: $showingAlert, presenting: alertItem) { alertItem in
//            Button(alertItem.buttonTitle, role: .none) {
//                print(alertItem.buttonTitle)
//            }
//        } message: { alertItem in
//            Text(alertItem.message)
//        }
//    }
//}
