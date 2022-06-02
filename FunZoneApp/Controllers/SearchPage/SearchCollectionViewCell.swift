//
//  SearchCollectionViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/1/22.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageView: UIImageView!
    
    var browser : SearchBrowsers! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let browser = browser {
            ImageView.image = UIImage(named: browser.imageBrowser)
        }
    }
}
