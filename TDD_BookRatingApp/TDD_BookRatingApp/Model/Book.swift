//
//  Book.swift
//  TDD_BookRatingApp
//
//  Created by Nevil on 12/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import Foundation

struct Book:Codable {
    let title: String
    let author: String
    var rating: Int?
    let year: Int?
    let pages: Int?
    let country: String?
    let language: String?
    let link: String?
    
    init(title: String, author:String, rating: Int? = nil, year: Int? = nil, pages:Int? = nil, country:String? = nil, language: String? = nil, link: String? = nil) {
        self.title = title
        self.author = author
        self.rating = rating
        self.year = year
        self.pages = pages
        self.country = country
        self.language = language
        self.link = link
    }
}
