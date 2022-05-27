//
//  MoviesViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/26/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var trending: UICollectionView!
    @IBOutlet weak var recommended: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView == trending) {
            let cell = trending.dequeueReusableCell(withReuseIdentifier: "trendingCell", for: indexPath) as! TrendingCollectionViewCell
            
            cell.backgroundColor = UIColor.green
            
            return cell
        } else {
             let cell = recommended.dequeueReusableCell(withReuseIdentifier: "recommendedCell", for: indexPath) as! RecommendedCollectionViewCell
            
            cell.backgroundColor = UIColor.orange
            
            return cell
        }
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
