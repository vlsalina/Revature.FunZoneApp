//
//  NoteTableViewCell.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/3/22.
//

import UIKit

class NoteTableViewCell: UITableViewCell {
    @IBOutlet weak var noteData: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
