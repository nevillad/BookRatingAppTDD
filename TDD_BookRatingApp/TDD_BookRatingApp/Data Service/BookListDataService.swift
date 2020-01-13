//
//  BookListDataService.swift
//  TDD_BookRatingApp
//
//  Created by Nevil on 13/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import UIKit

class BookListDataService: NSObject, UITableViewDataSource,UITableViewDelegate {
    
    var bookManager: BookManager?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let bookManager = bookManager else {
            return 0
        }
        return bookManager.booksCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let bookManager = bookManager else {
            fatalError()
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCellID", for: indexPath) as! BookCell
        cell.configBookCell(book: bookManager.bookAtIndex(index: indexPath.row))
        
        return  cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}
