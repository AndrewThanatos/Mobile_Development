//
//  Book.swift
//  My App
//
//  Created by a.berezhniuk on 18.02.2021.
//

import UIKit

struct BookStruct: Codable {
    var title: String
    var subtitle: String
    var isbn13: String
    var price: String
    var image: String
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case subtitle = "subtitle"
        case isbn13 = "isbn13"
        case price = "price"
        case image = "image"
    }
}

struct Images {
    static let niney = UIImage(named: "Image_01")!
    static let softSkill = UIImage(named: "Image_02")!
}

struct Search: Codable {
    
    let search: [BookStruct]

    enum CodingKeys: String, CodingKey {
        
        case search = "books"
    }
}
