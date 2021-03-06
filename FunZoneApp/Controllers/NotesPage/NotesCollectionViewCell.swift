//
//  NotesCollectionViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/31/22.
//

import UIKit

class NotesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var NoteTitle: UILabel!
    @IBOutlet weak var NoteDescription: UILabel!
    @IBOutlet weak var NoteImageView: UIImageView!
    
    var note : Note! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let note = note {
            NoteTitle.text = note.title
            NoteDescription.text = note.desc
        }
    }
    
}

