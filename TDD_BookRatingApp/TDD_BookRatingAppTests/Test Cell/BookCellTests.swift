//
//  BookCellTests.swift
//  TDD_BookRatingAppTests
//
//  Created by Nevil on 14/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import XCTest

@testable import TDD_BookRatingApp
class BookCellTests: XCTestCase {

    var tableView: UITableView!
    var mockDataSource: MockCellDataSource!
    
     let bookSample = Book(title: "Mahabharata", author: "Vyasa", rating: 9, year: -700, pages: 276, country: "India", language: "Sanskrit", link: "https://en.wikipedia.org/wiki/Mahabharata")
    
    override func setUp() {
        super.setUp()
        
        let bookListVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "BookListViewControllerID") as! BookListViewController
        _ = bookListVC.view
        
        tableView = bookListVC.bookListTableView
        mockDataSource = MockCellDataSource()
        tableView.dataSource = mockDataSource
        
    }

    override func tearDown() {
        super.tearDown()
    }

    func testCell_Config_ShouldSetsLableToBookData() {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCellID", for: IndexPath(row: 0, section: 0)) as! BookCell
        cell.configBookCell(book:bookSample)
        XCTAssertEqual(cell.titleLabel?.text, "Mahabharata")
        XCTAssertEqual(cell.authorLabel?.text, "Author: Vyasa")
        XCTAssertEqual(cell.languageAndCountryLabel?.text, "Sanskrit, India")
        XCTAssertEqual(cell.ratingLabel?.text, "Rating: 9/10")
    }
}
