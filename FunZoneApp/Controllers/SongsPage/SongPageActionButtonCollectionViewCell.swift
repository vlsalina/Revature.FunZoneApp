//
//  ActionButtonCollectionViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class SongPageActionButtonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var actionButton: UIButton!
    
    var action : SongsActions! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let action = action {
            actionButton.setTitle(action.actionType, for: .normal)
        }
    }
    
}
