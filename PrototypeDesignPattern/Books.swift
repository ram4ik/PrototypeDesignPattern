//
//  Books.swift
//  PrototypeDesignPattern
//
//  Created by Ramill Ibragimov on 22.08.2024.
//

import Foundation

struct Books: Identifiable {
    let id = UUID()
    var name: String
    var author: String
    var imageName: String
    var price: String
}
