//
//  NotesViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/31/22.
//

import UIKit

class NotesViewController: UIViewController {

    @IBOutlet weak var NotesCollection: UICollectionView!
    @IBOutlet weak var NotesPageActionsCollection: UICollectionView!
    
    var notes = Notes.FetchNotes()
    var actions = NotesActions.FetchActions()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NotesCollection.dataSource = self
        NotesPageActionsCollection.dataSource = self
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

extension NotesViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == NotesCollection) {
            return notes.count
        } else {
            return actions.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == NotesCollection) {
         let cell = NotesCollection.dequeueReusableCell(withReuseIdentifier: "noteCell", for: indexPath) as! NotesCollectionViewCell
        
        let note = notes[indexPath.row]
        cell.note = note
        cell.layer.cornerRadius = 5
        
        return cell
           
        } else {
            
          let cell = NotesPageActionsCollection.dequeueReusableCell(withReuseIdentifier: "actionCell", for: indexPath) as! NotesPageActionCollectionViewCell
        
        let action = actions[indexPath.row]
        cell.action = action
        
        return cell
           
        }
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
}
