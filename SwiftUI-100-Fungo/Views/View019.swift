//
//  View019.swift
//  SwiftUI-100-Fungo
//
//  Created by Susumu Hoshikawa on 2024/01/27.
//

import SwiftUI

let longText = """
どちらもたくさんぷんぷん漠然たる説明児というののためがするたませ。もちろん毎号に講演通りもいよいよこの思索なけれないかもが引張りてならませがは活動送っですたて、そうには踏みですますないな。個人にいうありのははなはだ次第をけっしてたうでし。大分嘉納君に所有自分全く授業のつかた世界同じ根本私か欠乏にというお関係なだたないば、どんな今日はおれか感地震をしから、岩崎さんののかららの私をとにかくご推察とあっば私ただをお担任があっようにおもに実排斥にあるんですて、いったいどうしても持へ借りですていたのが引越しなかっで。
"""

let snorlax = "Snorlax is a huge, bipedal, dark blue-green Pokémon with a cream-colored face, belly, and feet. "

struct View019: View {
    @State private var isShow = false
    
    var body: some View {
        //        VStack(alignment: .trailing, spacing: 16.0) {
        //
        //            Text(longText)
        //                .lineLimit(isShow ? nil : 2)
        //
        //            Button(isShow ? "閉じる" : "続きを読む。。。") {
        //                withAnimation {
        //                    isShow.toggle()
        //                }
        //            }
        //        }
        //        .padding()
        
        ScrollView {
            VStack {
                ShowMoreView(text: longText)
                ShowMoreView(text: snorlax)
                ShowMoreView(text: longText)
            }
        }
    }
}

#Preview {
    View019()
}

struct ShowMoreView: View {
    let text: String
    @State private var isFirst = true
    @State private var isFold = false
    @State private var needFoldButton = true
    @State private var textHeight: CGFloat?
    
    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Text(text)
                    .frame(height: textHeight)
                    .background {
                        GeometryReader { geometry in
                            Color.clear.preference(key: SizePreference.self, value: geometry.size)
                        }
                    }
                    .padding()
                    .onPreferenceChange(SizePreference.self) { size in
                        if self.isFirst {
                            if size.height > 80 {
                                textHeight = 80
                                isFold = true
                                isFirst = false
                            } else {
                                needFoldButton = false
                            }
                        }
                    }
            }
            
            if needFoldButton {
                Button(isFold ? "More" : "Fold") {
                    self.isFold.toggle()
                    textHeight = isFold ? 80 : nil
                }
                .padding(.trailing, 8)
            }
        }
    }
}

private struct SizePreference: PreferenceKey {
    static let defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}

