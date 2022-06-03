//
//  SearchViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/1/22.
//

import UIKit
import WebKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var browserCollection: UICollectionView!
    
    var browsers = SearchBrowsers.FetchBrowsers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        browserCollection.dataSource = self
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

extension SearchViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return browsers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = browserCollection.dequeueReusableCell(withReuseIdentifier: "searchCell", for: indexPath) as! SearchCollectionViewCell
        
        let browser = browsers[indexPath.row]
        cell.browser = browser
        cell.layer.cornerRadius = 42
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyObject = UIStoryboard(name: "Main", bundle: nil)
        let webpageVC = storyObject.instantiateViewController(withIdentifier: "WebPageViewController") as! WebPageViewController
        webpageVC.page = browsers[indexPath.row]
        //bookDelegate?.cellWasClicked(book: books[indexPath.row])
        self.present(webpageVC, animated: true, completion: nil)
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    
}
