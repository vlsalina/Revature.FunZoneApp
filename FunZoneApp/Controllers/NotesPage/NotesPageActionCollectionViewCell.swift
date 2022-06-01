//
//  NotesPageActionCollectionViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/31/22.
//

import UIKit

class NotesPageActionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var actionButton: UIButton!
    
    var action : NotesActions! {
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
