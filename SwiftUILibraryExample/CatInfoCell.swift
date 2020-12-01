//
//  CatInfoCell.swift
//  SwiftUILibraryExample
//
//  Created by Shunzhe Ma on R 2/11/26.
//

import SwiftUI

struct CatInfoCell: View {
    
    var displayedCat: Cat
    var displayCatImage: Bool
    
    var body: some View {
        
        HStack {
            if displayCatImage {
                Text(displayedCat.catEmoji)
                    .font(.largeTitle)
                    .makeRoundedButton(color: displayedCat.catColor)
            }
            VStack(alignment: .leading) {
                Text(displayedCat.catName)
                    .font(.title)
                    .foregroundColor(displayedCat.catColor)
                    .padding(3)
                Text("好きなおもちゃ： \(displayedCat.catFavoriteToy)")
                    .font(.headline)
                    .padding(3)
            }
        }
        
    }
    
}

struct CatInfoLibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(
            CatInfoCell(displayedCat: .example, displayCatImage: false),
            title: "猫の情報ビュー",
            category: .control
        )
        LibraryItem(
            CatInfoCell(displayedCat: .example, displayCatImage: true),
            title: "画像付きの猫の情報ビュー",
            category: .control
        )
    }
    @LibraryContentBuilder
    func modifiers(base: Text) -> [LibraryItem] {
        LibraryItem(
            base.makeRoundedButton(color: .orange)
        )
    }
}

extension Text {
    func makeRoundedButton(color: Color) -> some View {
        self
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.orange))
    }
}

struct CatInfoCell_Previews: PreviewProvider {
    static var previews: some View {
        CatInfoCell(displayedCat: .example, displayCatImage: true)
    }
}
