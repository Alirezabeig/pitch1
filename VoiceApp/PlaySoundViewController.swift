//
//  PlaySoundViewController.swift
//  VoiceApp
//
//  Created by Alireza on 8/13/21.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController{
    
    
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var chipButton: UIButton!
    @IBOutlet weak var varButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL:URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!

    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }
    
    @IBAction func playSound(_ sender: UIButton){
        print("playing any sound")
    }
    
    @IBAction func stopSound(_ sender: AnyObject){
        print ("Stop Sound works")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
        
    }
    
    
}
