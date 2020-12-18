//
//  SandwichStore.swift
//  SwiftUI ListDisplay
//
//  Created by 平林宏淳 on 2020/12/18.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//
import Foundation
//変更する箇所を指示する
class SandwichStore : ObservableObject {
    @Published var sandwich: [Sandwich]
    
    init(sandwich: [Sandwich] = []) {
        self.sandwich = sandwich
    }
}

let testStore = SandwichStore(sandwich: testData)
