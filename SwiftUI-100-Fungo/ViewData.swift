//
//  ViewData.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/25.
//

import SwiftUI

struct ViewData {
    var name: String
    var view: () -> AnyView
}

let views = [
    ViewData(name: "1. 画像をリサイズして表示（fit）", view: { AnyView(View001()) }),
    ViewData(name: "2. 画像をリサイズして表示（clip）", view: { AnyView(View002()) }),
]
