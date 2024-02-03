//
//  View024.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

struct View024: View {
    
    let items = [
        "ちさと",
        "たきな",
        "クルミ",
        "ミズキ",
    ]
    
    @State private var showAlert = false
    @State private var title: String = ""
    @State private var presenting: String = ""
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                HStack {
                    Text(item)
                    Spacer()
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    showAlert.toggle()
                    title = item
                    presenting = item + item
                }
            }
        }
        .alert(title, isPresented: $showAlert, presenting: presenting) {_ in 
            
        } message: { presenting in
            Text(presenting)
        }
    }
}

#Preview {
    View024()
}
