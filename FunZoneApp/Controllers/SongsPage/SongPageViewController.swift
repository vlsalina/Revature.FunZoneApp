//
//  SongPageViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit
import AVFoundation

class SongPageViewController: UIViewController {
    
    @IBOutlet weak var songCollectionView: UICollectionView!
    @IBOutlet weak var SongsPageActionCollectionView: UICollectionView!
    @IBOutlet weak var CurrentSongImagePreview: UIImageView!
    @IBOutlet weak var playbackBTN: UIButton!
    
    var songs = Songs.FetchSongs()
    var actions = SongsActions.FetchActions()
    var current : Songs?
    var audioPlayer : AVAudioPlayer?
    var status : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        CurrentSongImagePreview.layer.cornerRadius = 15
        
        songCollectionView.dataSource = self
        SongsPageActionCollectionView.dataSource = self
        
        initialize()
        initialize2()
    }
    
    func initialize() {
        current = songs[0]
    }
    
    func initialize2() {
        let filePath = Bundle.main.path(forResource: current?.musicData, ofType: "mp3")
        let url = URL(fileURLWithPath: filePath!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        } catch {
            print(error)
        }
    }
    
    @IBAction func start(_ sender: Any) {
        if (!status) {
            audioPlayer?.play()
            playbackBTN.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            status = true
        } else {
            audioPlayer?.pause()
            playbackBTN.setImage(UIImage(systemName: "play.fill"), for: .normal)
            status = false
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        audioPlayer?.stop()
        audioPlayer?.currentTime = 0
        playbackBTN.setImage(UIImage(systemName: "play.fill"), for: .normal)
        status = false
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
        current = songs[indexPath.row]
        print("song changed")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
