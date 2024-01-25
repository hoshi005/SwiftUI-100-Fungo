//
//  View003.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/25.
//

import SwiftUI

struct View003: View {
    var body: some View {
        Image(.icon)
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
        
//        Image(.icon)
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 150, height: 150)
//            .clipShape(Circle())
    }
}

#Preview {
    View003()
}
