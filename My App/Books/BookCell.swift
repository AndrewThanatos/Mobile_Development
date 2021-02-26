//
//  BookCell.swift
//  My App
//
//  Created by a.berezhniuk on 17.02.2021.
//

import UIKit

class BookCell: UITableViewCell {
    
    static let id = "BookCellIndent"
    
    @IBOutlet var bookImageView: UIImageView!
    @IBOutlet var bookNameLabel: UILabel!
    @IBOutlet var bookDescriptionLabel: UILabel!
    @IBOutlet var bookPriceLabel: UILabel!
    
    var book: BookStruct? {
        didSet{
            self.set()
        }
    }
    
    func set() {
        bookNameLabel?.text = book?.title
        bookDescriptionLabel?.text = book?.subtitle
        bookPriceLabel?.text = book?.price
    }
    
}

