//
//  NotePageViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/3/22.
//

import UIKit

class NotePageViewController: UIViewController {
    
    var note : Note?
    
    @IBOutlet weak var noteTableView: UITableView!
    
    var noteContents = [String?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
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


