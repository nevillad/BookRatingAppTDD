//
//  BooksListViewControllerTests.swift
//  TDD_BookRatingAppTests
//
//  Created by Nevil on 13/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import XCTest

@testable import TDD_BookRatingApp

class BookListViewControllerTests: XCTestCase {

    
    var sut: BookListViewController!
    override func setUp() {
        super.setUp()
        sut = (UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "BookListViewControllerID") as! BookListViewController)
        _ = sut.view
    }

    override func tearDown() {
        
    }
    
    //MARK: Nil Checks
    func testBookListVC_TableViewShouldNotBeNil() {
        XCTAssertNotNil(sut.bookListTableView)
    }

    //MARK: Data Source
    func testDataSource_ViewDidLoad_SetTableViewDataSource() {
        XCTAssertNotNil(sut.bookListTableView.dataSource)
        XCTAssertTrue(sut.bookListTableView.dataSource is BookListDataService)
    }
    
    //MARK: Delegate
    func testDelegate_ViewDidLoad_SetTableViewDelegate() {
        XCTAssertNotNil(sut.bookListTableView.delegate)
        XCTAssertTrue(sut.bookListTableView.delegate is BookListDataService)
        
    }
    
    func testDataService_ViewDidLoad_SingleDataServiceObject() {
        XCTAssertEqual(sut.bookListTableView.dataSource as! BookListDataService , sut.bookListTableView.delegate as! BookListDataService)
    }
}
