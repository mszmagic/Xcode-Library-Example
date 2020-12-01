//
//  ContentView.swift
//  SwiftUILibraryExample
//
//  Created by Shunzhe Ma on R 2/11/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        List(allCats) { cat in
            CatInfoCell(displayedCat: cat, displayCatImage: true)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
