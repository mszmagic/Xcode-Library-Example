//
//  Cat.swift
//  SwiftUILibraryExample
//
//  Created by Shunzhe Ma on R 2/11/26.
//

import Foundation
import SwiftUI

struct Cat: Identifiable {
    var id = UUID().uuidString
    var catEmoji: String
    var catName: String
    var catColor: Color
    var catFavoriteToy: String
    
    static let example = Cat(catEmoji: "🐈", catName: "Cat 3", catColor: .orange, catFavoriteToy: "Cat house")
}

let allCats = [
    Cat(catEmoji: "🐈‍⬛", catName: "ムギ", catColor: .black, catFavoriteToy: "ぐるぐるタワー"),
    Cat(catEmoji: "😸", catName: "ネコノヒー", catColor: .orange, catFavoriteToy: "ぬいぐるみ"),
    Cat(catEmoji: "🐈", catName: "レオ", catColor: .orange, catFavoriteToy: "ペット小屋")
]
