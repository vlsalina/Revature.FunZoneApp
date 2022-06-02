//
//  SongPageViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class SongPageViewController: UIViewController {

    @IBOutlet weak var songCollectionView: UICollectionView!
    @IBOutlet weak var SongsPageActionCollectionView: UICollectionView!
    @IBOutlet weak var CurrentSongImagePreview: UIImageView!
    
    var songs = Songs.FetchSongs()
    var actions = SongsActions.FetchActions()
    var current : Songs?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        CurrentSongImagePreview.layer.cornerRadius = 15
        
        songCollectionView.dataSource = self
        SongsPageActionCollectionView.dataSource = self
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

extension SongPageViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if (collectionView == songCollectionView) {
            return songs.count
        } else {
            return actions.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if (collectionView == songCollectionView) {
        let cell = songCollectionView.dequeueReusableCell(withReuseIdentifier: "songCell", for: indexPath) as! SongCollectionViewCell
        
        let song = songs[indexPath.row]
            cell.layer.cornerRadius = 5
            
        cell.song = song
        
        return cell
        } else {
         let cell = SongsPageActionCollectionView.dequeueReusableCell(withReuseIdentifier: "actionCell", for: indexPath) as! SongPageActionButtonCollectionViewCell
        
            let action = actions[indexPath.row]
            cell.action = action
            
        return cell
           
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("hello world")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
