////
////  ViewController.swift
////  Xylophone
////
////  Created by Angela Yu on 28/06/2019.
////  Copyright © 2019 The App Brewery. All rights reserved.
////
//
//import UIKit
//import AVFoundation
//
//
//
//class ViewController: UIViewController {
//    
//    var audioPlayer: AVAudioPlayer?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        prepareAudioPlayer()
//    }
//    
//    @IBAction func keyPressed(_ sender: UIButton) {
////        audioPlayer?.play()
//        playSound()
//    }
//    
////    func prepareAudioPlayer() {
////        if let soundURL = Bundle.main.url(forResource: "C", withExtension: "wav") {
////            do {
////                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
////                audioPlayer?.prepareToPlay()
////            } catch {
////                print("Error: Could not load the sound file.")
////            }
////        }
////    }
//    
//   
//    
//    func playSound() {
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else {return}
//        
//        do {
//            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
//            try AVAudioSession.sharedInstance().setActive(true)
//            
//            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
//            
////            guard let player = audioPlayer else {return}
//            
//            audioPlayer?.play()
////            player.play()
//            
//        } catch let error {
//            print(error.localizedDescription)
//        }
//    }
//    
//}
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
