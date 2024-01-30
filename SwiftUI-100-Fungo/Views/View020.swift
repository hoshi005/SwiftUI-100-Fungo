//
//  View020.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

private let text = """
I❤️ Snorlax!
Snorlax is most cute & cool &
powerful. Pokemon.
"""

struct View020: View {
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(attributedText())
            
            Spacer()
            
            Text("I")
                .font(.system(size: 20).bold())
            + Text(" ❤️ ")
                .foregroundStyle(Color.red)
            + Text("Snorlax")
                .foregroundStyle(Color.black)
                .font(.system(size: 20).bold())
            + Text("!\n")
            + Text("Snorlax ")
                .foregroundStyle(Color.red)
                .font(.system(size: 20).bold())
            + Text("is most ")
                .foregroundStyle(Color.blue)
                .font(.system(size: 20).bold())
            + Text("cute & cool& powerful .")
                .foregroundStyle(Color.green)
                .font(.system(size: 20).bold())
            + Text("Pokemon.")
                .foregroundStyle(Color.yellow)
                .font(.system(size: 20).bold())
            
            Spacer()
        }
    }
    
    func attributedText() -> AttributedString {
        var attrText = AttributedString(text)
        
        if let range = attrText.range(of: "Snorlax ") {
            attrText[range].foregroundColor = .red
            attrText[range].font = .system(size: 18, weight: .bold)
        }
        
        if let range = attrText.range(of: "is most") {
            attrText[range].foregroundColor = .blue
            attrText[range].font = .system(size: 18, weight: .bold)
        }
        
        if let range = attrText.range(of: "cute & cool &") {
            attrText[range].foregroundColor = .green
            attrText[range].font = .system(size: 18, weight: .bold)
        }
        
        if let range = attrText.range(of: "powerful.") {
            attrText[range].foregroundColor = .green
            attrText[range].font = .system(size: 18, weight: .bold)
        }
        
        if let range = attrText.range(of: "Pokemon.") {
            attrText[range].foregroundColor = .yellow
            attrText[range].font = .system(size: 18, weight: .bold)
        }
        
        return attrText
    }
}

#Preview {
    View020()
}
