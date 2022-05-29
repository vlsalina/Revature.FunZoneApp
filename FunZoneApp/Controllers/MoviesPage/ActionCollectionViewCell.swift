//
//  ActionCollectionViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/28/22.
//

import UIKit

class ActionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var actionButton: UIButton!
    
    var actionType : MoviesViewActions! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let actionType = actionType {
            actionButton.setTitle(actionType.actionType, for: .normal)
        } else {
            actionButton.setTitle("Button", for: .normal)
        }
    }
}
