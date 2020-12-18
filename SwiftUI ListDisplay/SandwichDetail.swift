//
//  SandwichDetail.swift
//  SwiftUI ListDisplay
//
//  Created by 平林宏淳 on 2020/12/18.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    @State private var zoomed = false
    
    var body: some View {
        
        VStack {
            Spacer(minLength: 0)
            Image(sandwich.imageName)
                .resizable() // 画像サイズ変更可能化 拡大した時(fill)と通常時のサイズ指定
                .aspectRatio(contentMode: zoomed ? .fill : /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                .onTapGesture { // タップした時
                    withAnimation{
                        self.zoomed.toggle()
                    }
            }
            
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Text("🔥 Spicy")
                    Spacer()
                }
                .font(Font.headline.smallCaps())
                .padding(.all)
                .foregroundColor(.red)
                .transition(.move(edge: .bottom))
            }
        }

        .navigationBarTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom) //画面下一杯まで
        
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SandwichDetail(sandwich: testData[0])
            }
            NavigationView {
                SandwichDetail(sandwich: testData[2])
            }

        }

    }
}
