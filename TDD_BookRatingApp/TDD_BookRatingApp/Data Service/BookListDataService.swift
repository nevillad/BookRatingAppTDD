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
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}
