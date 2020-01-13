//
//  MockExtensions.swift
//  TDD_BookRatingAppTests
//
//  Created by Nevil on 14/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import Foundation
import UIKit

@testable import TDD_BookRatingApp

extension BookListDataServiceTests {
    class TableViewMock: UITableView {
        var cellDequeuedPropely = false
        
        class func initMock(dataSource:BookListDataService) -> TableViewMock{
            let mock = TableViewMock(frame: CGRect.init(x: 0, y: 0, width: 320, height: 587), style: .plain)
            mock.dataSource = dataSource
            mock.register(BookCellMock.self, forCellReuseIdentifier: "bookCellID")
            return mock
        }
        
        override func dequeueReusableCell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell {
            cellDequeuedPropely = true
            
            return super.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
            
        }
    }
    
    class BookCellMock: BookCell {
        var bookData: Book?
        override func configBookCell(book: Book) {
            bookData = book
        }
    }
    
}
