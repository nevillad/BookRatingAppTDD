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
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bookListTableView.dataSource = dataService
        self.bookListTableView.delegate = dataService
        // Do any additional setup after loading the view.
    }


}

