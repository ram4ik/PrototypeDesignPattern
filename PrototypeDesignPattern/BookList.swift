//
//  BookList.swift
//  PrototypeDesignPattern
//
//  Created by Ramill Ibragimov on 22.08.2024.
//

import Foundation
import SwiftUI
import Observation

protocol Clonable {

    func clone() -> Self
}

@Observable
class BookList: Clonable {

    var data: [Books] = []

    required init() {}

    required init(data: [Books]) {
        
        self.data = data
    }

    func fetch() {

        data = [
            Books(name: "book 1", author: "author 1", imageName: "book", price: "€11.11"),
            Books(name: "book 2", author: "author 2", imageName: "book", price: "€12.12"),
            Books(name: "book 3", author: "author 3", imageName: "book", price: "€11.13"),
            Books(name: "book 4", author: "author 4", imageName: "book", price: "€14.11"),
            Books(name: "book 5", author: "author 5", imageName: "book", price: "€11.15"),
        ]
    }

    func clone() -> Self {

        return type(of: self).init(data: self.data)
    }
}
