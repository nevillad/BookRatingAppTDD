//
//  BookManager.swift
//  TDD_BookRatingApp
//
//  Created by Nevil on 12/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import Foundation

class BookManager {
    var booksCount: Int { return booksArray.count }
    
    private var booksArray:[Book] = [Book]()
    
    func loadData() {
        if let path = Bundle.main.path(forResource: "Books", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                do {
                    self.booksArray = try JSONDecoder().decode(Array<Book>.self, from: data)
               } catch let error {
                   print(error)
               }
            }catch {
                // handle error
            }
        }
    }
    
    func sortBooksArray() {
         booksArray.sort {
            $0.rating ?? 0 > $1.rating ?? 0
        }
    }
   
    func bookAtIndex(index:Int) -> Book {
        return self.booksArray[index]
    }
}

extension BookManager {
    convenience init? (booksArray:[Book]) {
        self.init()
        self.booksArray = booksArray
    }
}
