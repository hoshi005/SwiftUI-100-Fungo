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
    ViewData(name: "3. 画像を丸く切り取る", view: { AnyView(View003()) }),
    ViewData(name: "4. 画像を丸く切り取り、枠を付ける", view: { AnyView(View004()) }),
]
