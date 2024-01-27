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
    ViewData(name: "5. 画像を等間隔で横に並べる", view: { AnyView(View005()) }),
    ViewData(name: "6. NavigationViewを使いラージタイトルを表示する", view: { AnyView(View006()) }),
    ViewData(name: "7. Pickerを表示する", view: { AnyView(View007()) }),
    ViewData(name: "8. TabViewを使って画面を切り替える", view: { AnyView(View008()) }),
    ViewData(name: "9. Buttonが押されたら文字を変える", view: { AnyView(View009()) }),
]
