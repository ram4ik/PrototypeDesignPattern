//
//  ContentView.swift
//  PrototypeDesignPattern
//
//  Created by Ramill Ibragimov on 22.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var bookList = BookList()

    var body: some View {
        BookListView(books: bookList)
            .onAppear {
                bookList.fetch()
            }
    }
}

#Preview {
    ContentView()
}
