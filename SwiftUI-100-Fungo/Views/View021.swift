//
//  View021.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

struct View021: View {
    var body: some View {
        
        VStack {
            CardView {
                Text("Snoralx")
            }
            
            CardView {
                Image(.icon)
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            
            CardView(color: .red.opacity(0.4)) {
                Text("Red Shadow")
            }
            
            CardView(color: .green.opacity(0.4), radius: 24) {
                Text("Big Shadow")
            }
        }
    }
}

#Preview {
    View021()
}


struct CardView<Content>: View where Content: View {
    
    let color: Color
    let radius: CGFloat
    let content: () -> Content
    
    init(
        color: Color = Color.gray.opacity(0.4),
        radius: CGFloat = 8.0,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.color = color
        self.radius = radius
        self.content = content
    }
    
    var body: some View {
        content()
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
            .padding(radius + 8)
    }
}
