//
//  View005.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/25.
//

import SwiftUI

struct View005: View {
    var body: some View {
        HStack(spacing: 16.0) {
            ForEach(1...5, id: \.self) { _ in
                Image(.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .padding(16)
        
//        HStack {
//            Image(.icon)
//                .resizable()
//                .frame(width: 42, height: 42)
//            Spacer()
//            Image(.icon)
//                .resizable()
//                .frame(width: 42, height: 42)
//            Spacer()
//            Image(.icon)
//                .resizable()
//                .frame(width: 42, height: 42)
//            Spacer()
//            Image(.icon)
//                .resizable()
//                .frame(width: 42, height: 42)
//            Spacer()
//            Image(.icon)
//                .resizable()
//                .frame(width: 42, height: 42)
//        }
//        .padding(16)
    }
}

#Preview {
    View005()
}
