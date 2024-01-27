//
//  View007.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

struct View007: View {
    var body: some View {
        Picker("aaa", selection: .constant(3)) {
            ForEach(0...5, id: \.self) {
                Text("Select \($0)").tag($0)
            }
        }
        .pickerStyle(.wheel)
    }
    
//    let pokemons = ["Snorlax", "Pikachu", "Slowpoke", "Meowth"]
//    @State var selectedPokemon = 0
//
//    var body: some View {
//        Picker("Pokemon", selection: $selectedPokemon) {
//            ForEach(pokemons, id: \.self) { pokemon in
//                Text(pokemon)
//            }
//        }
//        .pickerStyle(WheelPickerStyle())
//        .onReceive([selectedPokemon].publisher.first()) { value in
//            print("SelectedPokemon: \(value)")
//            print(pokemons[value])
//        }
//    }
}



#Preview {
    View007()
}
