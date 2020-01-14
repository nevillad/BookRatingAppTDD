//
//  BookCell.swift
//  TDD_BookRatingApp
//
//  Created by Nevil on 13/01/20.
//  Copyright © 2020 Nevil. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var languageAndCountryLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configBookCell(book: Book) {
        self.titleLabel?.text = book.title
        self.authorLabel?.text = "Author: \(book.author)"
        self.languageAndCountryLabel.text = "\(book.language ?? ""), \(book.country ?? "")"
        if let rating = book.rating {
            self.ratingLabel.text = "Rating: \(rating)/10"
        }else {
            self.ratingLabel.text = "Rating: N/A"
        }
    }

    
     
}
