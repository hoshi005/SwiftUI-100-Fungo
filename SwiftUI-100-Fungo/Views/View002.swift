//
//  View002.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/25.
//

import SwiftUI

struct View002: View {
    var body: some View {
        Image(.icon)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 200)
            .clipped()
        
//        Image(.icon)
//            .resizable()
//            .scaledToFill()
//            .frame(width: 150, height: 200)
//            .clipped()
//            .background(Color.red)
    }
}

#Preview {
    View002()
}
