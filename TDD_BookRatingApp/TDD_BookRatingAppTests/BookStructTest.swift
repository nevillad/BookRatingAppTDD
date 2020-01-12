//
//  BookStructTest.swift
//  TDD_BookRatingAppTests
//
//  Created by Nevil on 12/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import XCTest

@testable import TDD_BookRatingApp

class BookStructTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testInit_BookWithTitleAndAuthor() {
        let testBook = Book(title: "The Divine Comedy", author: "Dante Alighieri")
        XCTAssertNotNil(testBook)
        XCTAssertEqual(testBook.title, "The Divine Comedy")
        XCTAssertEqual(testBook.author, "Dante Alighieri")
    }
 
    func testInit_SetBookWihtRating() {
        let testBook = Book(title: "The Magic Mountain", author: "Thomas Mann", rating: 7)
        XCTAssertNotNil(testBook)
        XCTAssertEqual(testBook.rating, 7)
    }
    
    func testInit_SetBookTitleAndPublishYear() {
        let  testBook = Book(title: "Poems", author: "Paul Celan", year: 1796)
        XCTAssertNotNil(testBook)
        XCTAssertEqual(testBook.year, 1796)
    }
    
    func testInit_SetBookWithPages() {
        let testBook = Book(title: "Fairy tales", author:"Hans Christian Andersen" , pages: 784)
        XCTAssertNotNil(testBook)
        XCTAssertEqual(testBook.pages, 784)
    }
    
    func testInit_SetBookWithCountry() {
        let testBook = Book(title: "The Magic Mountain", author: "Thomas Mann",  country: "Germany")
        XCTAssertNotNil(testBook)
        XCTAssertEqual(testBook.country, "Germany")
    }
    
    func testInit_SetBookWithLanguage() {
        let testBook = Book(title: "The Magic Mountain", author: "Thomas Mann", language: "German" )
        XCTAssertNotNil(testBook)
        XCTAssertEqual(testBook.language, "German")
    }
    
    func testInit_SetBookWithLink() {
           let testBook = Book(title: "Fairy tales", author: "Hans Christian Andersen", link: "https://en.wikipedia.org/wiki/Things_Fall_Apart\n")
           XCTAssertNotNil(testBook)
           XCTAssertEqual(testBook.link, "https://en.wikipedia.org/wiki/Things_Fall_Apart\n")
       }
    
}
