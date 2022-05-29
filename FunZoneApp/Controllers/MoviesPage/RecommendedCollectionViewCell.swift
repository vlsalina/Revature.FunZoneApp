//
//  RecommendedCollectionViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/28/22.
//

import UIKit

class RecommendedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    
    var movie : Movies! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let movie = movie {
            movieImage.image = movie.imageMovie
            year.text = String(movie.year)
            type.text = movie.type
            rating.text = movie.rating
            title.text = movie.title
        } else {
            movieImage.image = nil
            year.text = nil
            type.text = nil
            rating.text = nil
            title.text = nil
        }
        
        // need to round corners
    }

}
