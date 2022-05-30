//
//  Songs.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class Songs {
    
    var imageSong : UIImage
    
    init(imageSong : UIImage) {
        self.imageSong = imageSong
    }
    
    static func FetchSongs() -> [Songs] {
        return [
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
            Songs(imageSong: UIImage(named: "3")!),
        ]
    }
}
