//
//  Songs.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class Songs {
    
    var imageSong : UIImage
    var musicData : String
    var artist : String
    var songTitle : String
    
    init(imageSong : UIImage, musicData: String, artist: String, songTitle: String) {
        self.imageSong = imageSong
        self.musicData = musicData
        self.artist = artist
        self.songTitle = songTitle
    }
    
    static func FetchSongs() -> [Songs] {
        return [
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
            Songs(imageSong: UIImage(named: "3")!, musicData: "Taylor_Swift_-_Our_Song_(getmp3.pro)", artist: "Taylor Swift", songTitle: "Our Song"),
        ]
    }
}
