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
    ViewData(name: "10. Listを使ってセクションごとに表示する", view: { AnyView(View010()) }),
    ViewData(name: "11. 画面遷移時に値を渡す", view: { AnyView(View011()) }),
    ViewData(name: "12. NavigationViewの戻るボタンを非表示にする", view: { AnyView(View012()) }),
    ViewData(name: "13. Listのスタイルを変更する", view: { AnyView(View013()) }),
    ViewData(name: "14. Alertを表示する", view: { AnyView(View014()) }),
    ViewData(name: "★★★ 15. Alertを出し分ける", view: { AnyView(View015()) }),
    ViewData(name: "★★★ 16. Button内の画像やテキストの色を変えない", view: { AnyView(View016()) }),
    ViewData(name: "17. SwiftUIでアラートとシートを出し分ける", view: { AnyView(View017()) }),
    ViewData(name: "★★★ 18. Buttonからプッシュ遷移をする（NavigationLinkを無効にする）", view: { AnyView(View018()) }),
    ViewData(name: "★★★ 19. 続きを読む。。。ボタンがあるViewを実装する", view: { AnyView(View019()) }),
    ViewData(name: "20. Text中の文字の太さや色を変える", view: { AnyView(View020()) }),
    ViewData(name: "★★★ 21. FunctionBuilderを使ってViewに影をつける", view: { AnyView(View021()) }),
    ViewData(name: "22. ViewModifierを使ってViewに影をつける", view: { AnyView(View022()) }),
    ViewData(name: "23. リストを編集する", view: { AnyView(View023()) }),
    ViewData(name: "24. リストのセルをタップするとアラートが表示させる", view: { AnyView(View024()) }),
    ViewData(name: "25. 画面遷移先のViewから遷移元のメソッドを呼び出す", view: { AnyView(View025()) }),
    ViewData(name: "26. ListViewからそれぞれ別のViewに遷移する", view: { AnyView(View026()) }),
    ViewData(name: "27. 複数行のPickerを作成する", view: { AnyView(View027()) }),
    ViewData(name: "28. Sheetを表示する", view: { AnyView(View028()) }),
    ViewData(name: "29. 全画面でSheetを表示する", view: { AnyView(View029()) }),
    ViewData(name: "30. NavigationBarを隠す", view: { AnyView(View030()) }),
    ViewData(name: "31. Previewを横向きにする", view: { AnyView(View031()) }),
    ViewData(name: "32. 端末のシェイクを検知する", view: { AnyView(View032()) }),
    ViewData(name: "33. UICollectionViewのようにViewを並べる", view: { AnyView(View033()) }),
    ViewData(name: "34. スワイプで遷移するチュートリアル画面を作る", view: { AnyView(View034()) }),
    ViewData(name: "35. 閉じることができないモーダルを表示する", view: { AnyView(View035()) }),
    ViewData(name: "", view: { AnyView(View036()) }),
    ViewData(name: "37. ハーフモーダルを表示する", view: { AnyView(View037()) }),
    ViewData(name: "38. マークダウンを表示する", view: { AnyView(View038()) }),
    ViewData(name: "39. 変数に格納したマークダウンを表示する", view: { AnyView(View039()) }),
    ViewData(name: "40. マークダウンのリンクの色を赤色に変える", view: { AnyView(View040()) }),
    ViewData(name: "41. GithubのAPIを叩き、リポジトリの情報をリストに表示する（async, await）", view: { AnyView(View041()) }),
    ViewData(name: "", view: { AnyView(View042()) }),
    ViewData(name: "43. GithubのAPIを叩き、リポジトリの情報をリストに表示する。一番下までスクロールされたら追加で取得してください。Indicator も表示してください。", view: { AnyView(View043()) }),
    ViewData(name: "44. SwiftUIのTextFieldで編集中と編集完了を検知する", view: { AnyView(View044()) }),
    ViewData(name: "45. SwiftUIでAppStorageを使ってUserDefaultの値を監視する", view: { AnyView(View045()) }),
    ViewData(name: "46. SwiftUIでViewの上にViewを重ねる", view: { AnyView(View046()) }),
    ViewData(name: "", view: { AnyView(View047()) }),
    ViewData(name: "", view: { AnyView(View048()) }),
    ViewData(name: "49. SwiftUIでAVAudioPlayerで音楽を再生し、再生終了を検知する", view: { AnyView(View049()) }),
    ViewData(name: "", view: { AnyView(View050()) }),
]
