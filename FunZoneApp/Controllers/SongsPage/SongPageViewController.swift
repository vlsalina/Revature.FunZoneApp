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
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var songCounter: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var playbackIMG: UIImageView!
    
    var songs = Songs.FetchSongs()
    var actions = SongsActions.FetchActions()
    var current : Songs?
    var index : Int = 0
    var audioPlayer : AVAudioPlayer?
    var status : Bool = false
    var timer : Timer?
    
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
        current = songs[index]
        CurrentSongImagePreview.image = current?.imageSong
        artistLabel.text = current?.artist
        songLabel.text = current?.songTitle
        playbackIMG.image = current?.imageSong
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
    
    func setMusic() {
        let filePath = Bundle.main.path(forResource: current?.musicData, ofType: "mp3")
        let url = URL(fileURLWithPath: filePath!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        } catch {
            print(error)
        }
    }
    
    func resetMusic() {
        audioPlayer?.stop()
        audioPlayer?.currentTime = 0
        songCounter.text = "00:00"
        timer?.invalidate()
        status = false
    }
    
    @IBAction func start(_ sender: Any) {
        if (!status) {
            audioPlayer?.play()
            playbackBTN.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            status = true
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
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
    
    @IBAction func previous(_ sender: Any) {
        resetMusic()
        
        validateIndex(action: PlaybackActions.backward, i: &index, len: songs.count)
        current = songs[index]
        setMusic()
        
        playbackIMG.image = current?.imageSong
        CurrentSongImagePreview.image = current?.imageSong
        artistLabel.text = current?.artist
        songLabel.text = current?.songTitle
        
        playbackBTN.setImage(UIImage(systemName: "play.fill"), for: .normal)
    }
    
    @IBAction func next(_ sender: Any) {
        resetMusic()
        
        validateIndex(action: PlaybackActions.forward, i: &index, len: songs.count)
        current = songs[index]
        setMusic()
        
        playbackIMG.image = current?.imageSong
        CurrentSongImagePreview.image = current?.imageSong
        artistLabel.text = current?.artist
        songLabel.text = current?.songTitle
        
        playbackBTN.setImage(UIImage(systemName: "play.fill"), for: .normal)
    }
    
    @objc func updateTime() {
        let t = Float(audioPlayer!.currentTime) / Float(audioPlayer!.duration)
        
        songCounter.text = audioPlayer?.currentTime.description
        progress.progress = t
        
        songCounter.text = formatTimeFor(seconds: Double((audioPlayer?.currentTime.description)!)!)
        
        if (Float(audioPlayer!.currentTime) == Float(0)) {
            resetMusic()
            playbackBTN.setImage(UIImage(systemName: "play.fill"), for: .normal)
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
        resetMusic()
        
        let song = songs[indexPath.row]
        
        current = song
        CurrentSongImagePreview.image = song.imageSong
        artistLabel.text = song.artist
        songLabel.text = song.songTitle
        playbackIMG.image = song.imageSong
        playbackBTN.setImage(UIImage(systemName: "play.fill"), for: .normal)
        index = indexPath.row
        setMusic()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
