//
//  MovieViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/28/22.
//

import UIKit

class MoviesViewController: UIViewController {
    
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    @IBOutlet weak var recommendedCollectionView: UICollectionView!
    @IBOutlet weak var actionsCollectionView: UICollectionView!
    
    var movies = Movies.FetchMovie()
    var actions = MoviesViewActions.FetchActions()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        movieCollectionView.dataSource = self
        recommendedCollectionView.dataSource = self
        actionsCollectionView.dataSource = self
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

extension MoviesViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if (collectionView == movieCollectionView) {
            return movies[0...9].count
        }
        else if (collectionView == recommendedCollectionView) {
            return movies[10...].count
        } else {
            return actions.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if (collectionView == movieCollectionView) {
         let cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        let movie = movies[indexPath.item]
        cell.movie = movie
        cell.layer.cornerRadius = 15
        
        return cell
           
        }
        else if (collectionView == recommendedCollectionView){
          let cell = recommendedCollectionView.dequeueReusableCell(withReuseIdentifier: "recommendedCell", for: indexPath) as! RecommendedCollectionViewCell
        
        let movie = movies[indexPath.item]
        cell.movie = movie
            cell.movieImage.layer.cornerRadius = 10
            
            return cell
           
        }
        else {
            let cell = actionsCollectionView.dequeueReusableCell(withReuseIdentifier: "actionCell", for: indexPath) as! ActionCollectionViewCell
            
        let actionType = actions[indexPath.item]
            cell.actionType = actionType
            
            return cell
            
        }
          
        
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
}

