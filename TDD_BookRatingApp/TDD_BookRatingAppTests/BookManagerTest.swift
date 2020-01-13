//
//  BookManagerTest.swift
//  TDD_BookRatingAppTests
//
//  Created by Nevil on 12/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import XCTest

@testable import TDD_BookRatingApp

class BookManagerTest: XCTestCase {
    
    var sut: BookManager!
    
    let book1 = Book(title: "Buddenbrooks", author: "Thomas Mann", rating: 7, year: 1901, pages: 736, country: "Germany", language: "German", link: "https://en.wikipedia.org/wiki/Buddenbrooks")
    
    let book2 = Book(title: "The Magic Mountain", author: "Thomas Mann", rating: 4, year: 1924, pages: 720, country: "Germany", language: "German", link: "https://en.wikipedia.org/wiki/The_Magic_Mountain")
    
    let book3 = Book(title: "Essays", author: "Michel de Montaigne", rating: 5, year: 1595, pages: 404, country: "France", language: "French", link: "https://en.wikipedia.org/wiki/Essays_(Montaigne)")
    
    let book4 = Book(title: "Mahabharata", author: "Vyasa", rating: 9, year: -700, pages: 276, country: "India", language: "Sanskrit", link: "https://en.wikipedia.org/wiki/Mahabharata")
   
    override func setUp() {
        super.setUp()
        sut = BookManager(booksArray: [book1, book2, book3, book4])
    }

    // MARK: Optional Init
    func testInit_WithBookArray() {
        let bookManager = BookManager(booksArray: [book1, book2, book3, book4])
        XCTAssertEqual(bookManager!.booksCount, 4)
    }
    
    // MARK: Initial Values
    func testInit_BookManager_LoadBookDataAndCheckCount() {
         XCTAssertEqual(sut.booksCount, 4)
    }

    //MARK: load books from json assest
    func testInit_LoadBooksFromJSONFile() {
        let bookManager = BookManager()
        bookManager.loadData()
        XCTAssertEqual(bookManager.booksCount, 100)
    }
    
    //MARK: Sort Array and Query
    func testSort_BookArrayByBookRatingHighToLow() {
        sut.sortBooksArray()
        XCTAssertEqual(sut.bookAtIndex(index: 0), book4)
        XCTAssertEqual(sut.bookAtIndex(index: 1), book1)
        XCTAssertEqual(sut.bookAtIndex(index: 2), book3)
        XCTAssertEqual(sut.bookAtIndex(index: 3), book2)
    }
    
    func testQuery_ReturnsBookAtIndex() {
        let bookQueried = sut.bookAtIndex(index: 2)
        XCTAssertEqual(bookQueried, book3)
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    

    

}
