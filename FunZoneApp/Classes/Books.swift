//
//  Books.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class Books {
    var imageBook : UIImage
    
    init(imageBook:UIImage) {
        self.imageBook = imageBook
    }
    
    static func FetchBooks() -> [Books] {
        return [
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
            Books(imageBook: UIImage(named: "1")!),
        ]
    }
    
}
