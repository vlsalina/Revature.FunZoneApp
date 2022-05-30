//
//  SongCollectionViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class SongCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageView: UIImageView!
    
    var song : Songs! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let song = song {
            ImageView.image = song.imageSong
        }
    }
}
