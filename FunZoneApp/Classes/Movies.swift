//
//  Movies.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/28/22.
//

import UIKit

class Movie {
    
    var title = ""
    var year : Int
    var imageMovie : UIImage
    var rating = ""
    
    
    init(title:String , year:Int, imageMovie:UIImage, rating:String  ) {
        self.title = title
        self.year = year
        self.imageMovie = imageMovie
        self.rating = rating
    }
    
    static func FetchMovie () -> [Movie]{
        
        return [
            Movie(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG"),
            Movie(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG"),
            Movie(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG"),
            Movie(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG"),
        ]
        
    }
}
