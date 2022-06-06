//
//  Books.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class Books {
    var imageBook : UIImage
    var bookData : String
    
    init(imageBook:UIImage, bookData: String) {
        self.imageBook = imageBook
        self.bookData = bookData
    }
    
    static func FetchBooks() -> [Books] {
        return [
            Books(imageBook: UIImage(named: "2")!, bookData: "swiftui-apprentice"),
            Books(imageBook: UIImage(named: "4")!, bookData: "Hatchet"),
            Books(imageBook: UIImage(named: "5")!, bookData: "Gatsby_PDF_FullText"),
            Books(imageBook: UIImage(named: "5107")!, bookData: "Catcher in the Rye"),
            Books(imageBook: UIImage(named: "2")!, bookData: "swiftui-apprentice"),
            Books(imageBook: UIImage(named: "4")!, bookData: "Hatchet"),
            Books(imageBook: UIImage(named: "5")!, bookData: "Gatsby_PDF_FullText"),
            Books(imageBook: UIImage(named: "5107")!, bookData: "Catcher in the Rye"),
            Books(imageBook: UIImage(named: "2")!, bookData: "swiftui-apprentice"),
            Books(imageBook: UIImage(named: "4")!, bookData: "Hatchet"),
            Books(imageBook: UIImage(named: "5")!, bookData: "Gatsby_PDF_FullText"),
            Books(imageBook: UIImage(named: "5107")!, bookData: "Catcher in the Rye"),
            Books(imageBook: UIImage(named: "2")!, bookData: "swiftui-apprentice"),
            Books(imageBook: UIImage(named: "4")!, bookData: "Hatchet"),
            Books(imageBook: UIImage(named: "5")!, bookData: "Gatsby_PDF_FullText"),
            Books(imageBook: UIImage(named: "5107")!, bookData: "Catcher in the Rye"),
            Books(imageBook: UIImage(named: "2")!, bookData: "swiftui-apprentice"),
            Books(imageBook: UIImage(named: "4")!, bookData: "Hatchet"),
            Books(imageBook: UIImage(named: "5")!, bookData: "Gatsby_PDF_FullText"),
            Books(imageBook: UIImage(named: "5107")!, bookData: "Catcher in the Rye"),
        ]
    }
    
}
