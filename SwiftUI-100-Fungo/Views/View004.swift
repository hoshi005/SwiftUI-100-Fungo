//
//  View004.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/25.
//

import SwiftUI

struct View004: View {
    var body: some View {
        Image(.icon)
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(Color.red, lineWidth: 2)
            }
        
//        Image(.icon)
//            .resizable()
//            .scaledToFill()
//            .frame(width: 150, height: 150)
//            .cornerRadius(75)
//            .overlay(
//                RoundedRectangle(cornerRadius: 75).stroke(Color.black, lineWidth: 4)
//            )
    }
}

#Preview {
    View004()
}
