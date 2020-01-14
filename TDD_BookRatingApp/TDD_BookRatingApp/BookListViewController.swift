//
//  ViewController.swift
//  TDD_BookRatingApp
//
//  Created by Nevil on 12/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import UIKit

class BookListViewController: UIViewController {

    @IBOutlet weak var randomOrder: UISwitch!
    @IBOutlet weak var bookListTableView: UITableView!
    @IBOutlet var dataService: BookListDataService!
    
    var bookManager:BookManager = BookManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bookListTableView.dataSource = dataService
        self.bookListTableView.delegate = dataService
        
        bookManager.delegate = self
        dataService.bookManager = bookManager
        
        
        dataService.bookManager?.loadData()
        dataService.bookManager?.sortBooksArray()
        
//        bookListTableView.reloadData()
        // Do any additional setup after loading the view.
    }

    @IBAction func randomOrderValueChanged(_ sender: Any) {
        if randomOrder.isOn {
            dataService.bookManager?.startTimer()
        }else {
            dataService.bookManager?.stopTimer()
        }
    }
}
extension BookListViewController: BookManagerDelegate {
    func refreshData() {
        
        DispatchQueue.main.async {
            self.bookListTableView.reloadData()
        }
    }
    
    
}

