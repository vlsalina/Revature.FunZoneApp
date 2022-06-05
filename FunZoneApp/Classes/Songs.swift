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
            Songs(imageSong: UIImage(named: "David_Bowie_-_Heroes")!, musicData: "David_Bowie_-_Heroes_Official_Vide_(getmp3.pro)", artist: "David Bowie", songTitle: "Heroes"),
            Songs(imageSong: UIImage(named: "81tgtNv40YL._SL1417_")!, musicData: "Michelle_Branch_-_All_You_Wanted_O_(getmp3.pro)", artist: "Michelle Branch", songTitle: "All You Wanted"),
        ]
    }
}
