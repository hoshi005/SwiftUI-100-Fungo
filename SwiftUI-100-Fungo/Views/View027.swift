//
//  View027.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/30.
//

import SwiftUI

struct View027: View {
    var body: some View {
        
        GeometryReader { geometry in
            HStack {
                Picker(selection: .constant(0)) {
                    ForEach(0..<10, id: \.self) { value in
                        Text("\(value)")
                    }
                } label: {
                    Text("AAA")
                }
                .labelsHidden()
                .pickerStyle(.wheel)
                .frame(
                    width: geometry.size.width / 2,
                    height: geometry.size.height
                )
                .clipped()
                
                Picker(selection: .constant(0)) {
                    ForEach(10..<20, id: \.self) { value in
                        Text("\(value)")
                    }
                } label: {
                    Text("AAA")
                }
                .labelsHidden()
                .pickerStyle(.wheel)
                .frame(
                    width: geometry.size.width / 2,
                    height: geometry.size.height
                )
                .clipped()
            }
        }
        .padding()
    }
}

#Preview {
    View027()
}
