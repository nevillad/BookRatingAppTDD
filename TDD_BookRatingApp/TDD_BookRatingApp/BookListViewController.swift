//
//  ViewController.swift
//  TDD_BookRatingApp
//
//  Created by Nevil on 12/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import UIKit

class BookListViewController: UIViewController {

    @IBOutlet weak var bookListTableView: UITableView!
    @IBOutlet var dataService: BookListDataService!
    
    var bookManager = BookManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bookListTableView.dataSource = dataService
        self.bookListTableView.delegate = dataService
        
        dataService.bookManager = bookManager
        
        dataService.bookManager?.loadData()
        dataService.bookManager?.sortBooksArray()
        
        bookListTableView.reloadData()
        // Do any additional setup after loading the view.
    }


}

