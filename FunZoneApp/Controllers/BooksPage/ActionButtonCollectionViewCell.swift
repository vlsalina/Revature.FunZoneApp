//
//  ActionButtonCollectionViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class ActionButtonCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var actionButton: UIButton!
    
    var action : BooksActions! {
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
