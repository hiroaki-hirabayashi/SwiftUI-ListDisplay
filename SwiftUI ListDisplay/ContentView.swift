//
//  ContentView.swift
//  SwiftUI ListDisplay
//
//  Created by 平林宏淳 on 2020/12/18.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var sandwich: [Sandwich] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(sandwich) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
//                .onMove(perform: moveSandwich)
//                .ondelete(perform: deleteSandwich)
                
                HStack {
                    Spacer()
                    Text("\(sandwich.count) Sandwiches")
                        .foregroundColor(Color.secondary)
                    Spacer()
                }
                
            }
            .navigationBarTitle("Sandwiches")
//            .toolber {
//                EditButton()
//
//            }
            
        
        Text("サンドイッチを選んでください")
            .font(.largeTitle)
        }
    }


}
    

//ビューの変更時にビューの変更時に自動的にオブジェクトを監視し更新する



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwich: testData)
        
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.thumbnailName)
                .resizable()
                .frame(width:50 , height: 50) //画像の大きさ指定
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}



