//
//  EditNotePageViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/4/22.
//

import UIKit

class EditNotePageViewController: UIViewController {

    @IBOutlet weak var titleField: UITextView!
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var bodyField: UITextView!
    
    var note : Note?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initialize() {
        titleField.text = note?.title
        descriptionField.text = note?.desc
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
