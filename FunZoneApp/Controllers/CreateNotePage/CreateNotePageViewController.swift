//
//  CreateNotePageViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/3/22.
//

import UIKit

class CreateNotePageViewController: UIViewController {
    
    @IBOutlet weak var titleField: UITextView!
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var bodyField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func viewData(_ sender: Any) {
        let notes = DBHelperClass.dbHelper.getNotes()
        print(notes.count)
    }
    
    
    @IBAction func submit(_ sender: Any) {
        do {
            try validateNewNoteData(title: titleField.text!, description: descriptionField.text!, body: bodyField.text!)
        } catch CreateNewNoteErrors.invalidTitle {
            print(CreateNewNoteConstants.invalidTitle.rawValue)
            return
        } catch CreateNewNoteErrors.invalidDescription {
            print(CreateNewNoteConstants.invalidDescription.rawValue)
            return
        } catch CreateNewNoteErrors.invalidBody {
            print(CreateNewNoteConstants.invalidBody.rawValue)
            return
        } catch {
            print(CreateNewNoteConstants.unknownError.rawValue)
            return
        }
        
        // MARK: - Submit new note
        DBHelperClass.dbHelper.addNote(title: titleField.text!, description: descriptionField.text!, body: bodyField.text!)
        print("Successfully added new note")
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
