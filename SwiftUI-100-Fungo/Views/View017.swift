//
//  View017.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

// 数値の入力チェックは、Int()かDouble()で戻り値を確認すると良い

struct View017: View {
    @State private var isShowAlert = false
    @State private var isShowSheet = false
    @State private var text = ""
    
    var body: some View {
        VStack {
            TextField("input number", text: $text)
                .textFieldStyle(.roundedBorder)
            Button("Show !!") {
                if let _ = Int(text) {
                    isShowSheet.toggle()
                } else {
                    isShowAlert.toggle()
                }
            }
        }
        .padding()
        .alert("数値以外が入力されたよ", isPresented: $isShowAlert) {
            Button("OK", role: .none) {}
            Button("Cancel", role: .cancel) {}
        }
        .sheet(isPresented: $isShowSheet) {
            Text("数値が入力されたよ")
        }
    }
}

#Preview {
    View017()
}
