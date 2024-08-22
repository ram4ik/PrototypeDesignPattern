//
//  BookListView.swift
//  PrototypeDesignPattern
//
//  Created by Ramill Ibragimov on 22.08.2024.
//

import SwiftUI

struct BookListView: View {
    var books: BookList

    var body: some View {
        NavigationView {
            List(books.data) { book in
                HStack(alignment: .top, spacing: 10) {
                    Image(systemName: book.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 120)
                        .cornerRadius(8)
                }

                VStack(alignment: .leading, spacing: 5) {
                    Text(book.name)
                        .font(.title)
                        .fontWeight(.bold)

                    Text(book.author)
                        .font(.subheadline)

                    Spacer()

                    Text(book.price)
                        .font(.headline)
                        .foregroundStyle(.orange)
                }
                .padding(.vertical, 5)
            }
        }
        .navigationBarTitle("Book List", displayMode: .large)
        .listStyle(.plain)
    }
}
