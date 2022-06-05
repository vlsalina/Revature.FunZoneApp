//
//  NotePageViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/3/22.
//

import UIKit

class NotePageViewController: UIViewController {
    
    var note : Note?
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var bodyField: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initialize()
    }
    
    func initialize() {
        titleLabel.text = note?.title
        descriptionLabel.text = note?.desc
        bodyField.text = note?.body
    }
    
    @IBAction func deleteNote(_ sender: Any) {
        let status = DBHelperClass.dbHelper.deleteNote(title: (note?.title)!)
        if (status) {
            segueToVC(target: "TabBarController", sender: self)
            print("successfully deleted note")
        } else {
            print("failed to delete note")
        }
        print("deleted note successfully")
    }
    
    @IBAction func submitNote(_ sender: Any) {
        do {
            try validateNewNoteData(title: (note?.title)!, description: (note?.desc)!, body: bodyField.text!)
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
        let status = DBHelperClass.dbHelper.updateNote(title: (note?.title)!, body: bodyField.text!)
        if (status) {
            print(EditNoteConstants.successEdit.rawValue)
            segueToVC(target: "TabBarController", sender: self)
        } else {
            print(EditNoteConstants.unknownErr.rawValue)
        }
    }
    
    //    @IBAction func deleteNote(_ sender: Any) {
    //        let status = DBHelperClass.dbHelper.deleteNote(title: note!.title!)
    //        if (status) {
    //            segueToVC(target: "NotesPageViewController", sender: self)
    //            print("successfully deleted note")
    //        } else {
    //            print("failed to delete note")
    //        }
    //        print("deleted note successfully")
    //
    //    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}


