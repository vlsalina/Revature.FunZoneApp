//
//  BookCollectionViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var bookImage: UIImageView!
    
    var book : Books! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let book = book {
            bookImage.image = book.imageBook
        } else {
            bookImage.image = nil
        }
    }
}
