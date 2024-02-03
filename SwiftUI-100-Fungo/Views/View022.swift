//
//  View022.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

struct View022: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .card()
            
            Image(.icon)
                .resizable()
                .frame(width: 60, height: 60)
                .card()
            
            Text("Red Shadow")
                .card(color: .red.opacity(0.4))
            
            Text("Big Shadow")
                .card(color: .green.opacity(0.4), radius: 24)
        }
    }
}

#Preview {
    View022()
}

struct CardModifier: ViewModifier {
    let color: Color
    let radius: CGFloat

    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
            .padding(radius + 8)
    }
}


extension View {
    func card(
        color: Color = .gray.opacity(0.4),
        radius: CGFloat = 8
    ) -> some View {
        self.modifier(CardModifier(color: color, radius: radius))
    }
}
