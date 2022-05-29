//
//  Movies.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/28/22.
//

import UIKit

class Movies {
    
    var title = ""
    var year : Int
    var imageMovie : UIImage
    var rating = ""
    var type = ""
    
    
    init(title:String , year:Int, imageMovie:UIImage, rating:String, type:String) {
        self.title = title
        self.year = year
        self.imageMovie = imageMovie
        self.rating = rating
        self.type = type
    }
    
    static func FetchMovie () -> [Movies]{
        
        return [
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
            Movies(title: "The Art of Sketching ", year: 2000, imageMovie: UIImage(named: "1" )!, rating: "PG", type: "Movie"),
       ]
        
    }
}
