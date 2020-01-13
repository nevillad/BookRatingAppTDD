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
        
        override func dequeueReusableCell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell {
            cellDequeuedPropely = true
            
            return super.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
            
        }
    }
    
}
