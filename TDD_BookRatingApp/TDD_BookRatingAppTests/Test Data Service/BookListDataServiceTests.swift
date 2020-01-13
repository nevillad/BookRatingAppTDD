//
//  BookListDataServiceTests.swift
//  TDD_BookRatingAppTests
//
//  Created by Nevil on 13/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import XCTest

@testable import TDD_BookRatingApp
class BookListDataServiceTests: XCTestCase {

    var sut: BookListDataService!
    var bookListTableView: UITableView!
    
    let book1 = Book(title: "Buddenbrooks", author: "Thomas Mann", rating: 7, year: 1901, pages: 736, country: "Germany", language: "German", link: "https://en.wikipedia.org/wiki/Buddenbrooks")
       
       let book2 = Book(title: "The Magic Mountain", author: "Thomas Mann", rating: 4, year: 1924, pages: 720, country: "Germany", language: "German", link: "https://en.wikipedia.org/wiki/The_Magic_Mountain")
       
       let book3 = Book(title: "Essays", author: "Michel de Montaigne", rating: 5, year: 1595, pages: 404, country: "France", language: "French", link: "https://en.wikipedia.org/wiki/Essays_(Montaigne)")
       
       let book4 = Book(title: "Mahabharata", author: "Vyasa", rating: 9, year: -700, pages: 276, country: "India", language: "Sanskrit", link: "https://en.wikipedia.org/wiki/Mahabharata")
    
    override func setUp() {
        super.setUp()
        sut = BookListDataService()
        bookListTableView = UITableView()
        bookListTableView.dataSource = sut
        bookListTableView.delegate = sut
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    //MARK: Section

    func testTableViewSections_Count_ReturnOne() {
        let sections = bookListTableView.numberOfSections
        XCTAssertEqual(sections, 1)
    }
    
//    func testTableViewSections_SectionOne_ReturnBooks

}
