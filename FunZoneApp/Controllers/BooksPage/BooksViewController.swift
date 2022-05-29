//
//  BooksViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class BooksViewController: UIViewController {
    
    
    @IBOutlet weak var BooksPageActionCollectionView: UICollectionView!
    @IBOutlet weak var BooksCollectionView: UICollectionView!
    
    var actions = BooksActions.FetchActions()
    var books = Books.FetchBooks()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        BooksPageActionCollectionView.dataSource = self
        BooksCollectionView.dataSource = self
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

extension BooksViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == BooksPageActionCollectionView) {
            return actions.count
        } else {
            return books.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == BooksPageActionCollectionView) {
         let cell = BooksPageActionCollectionView.dequeueReusableCell(withReuseIdentifier: "actionCell", for: indexPath) as! ActionButtonCollectionViewCell
        
        let action = actions[indexPath.row]
        cell.action = action
        
        return cell
           
        } else {
          let cell = BooksCollectionView.dequeueReusableCell(withReuseIdentifier: "bookCell", for: indexPath) as! BookCollectionViewCell
        
        let book = books[indexPath.item]
        cell.book = book
        cell.layer.cornerRadius = 5
        
        return cell
           
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
}
