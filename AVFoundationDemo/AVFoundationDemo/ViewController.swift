//
//  ViewController.swift
//  AVFoundationDemo
//
//  Created by Arvind Kumar on 5/12/16.
//  Copyright © 2016 epam. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var updateTimer=NSTimer()
var myAudio=AVAudioPlayer()
    @IBOutlet weak var playerStatus: UILabel!
       @IBOutlet weak var seekBar: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        let audioFilePath=NSBundle.mainBundle().pathForResource("anthem", ofType: "mp3")
        if let audioFilePath=audioFilePath{
            let audioFileURL=NSURL(fileURLWithPath: audioFilePath)
            do{
            try myAudio=AVAudioPlayer(contentsOfURL: audioFileURL)
                seekBar.minimumValue=0
               seekBar.maximumValue=Float(myAudio.duration)
            }
            catch{
            print("Error...")
            }
        }
        
    }

 
    @IBOutlet weak var volumeLevel: UISlider!
    @IBAction func seekBarValueChanged(sender: AnyObject) {
        myAudio.currentTime=Double(seekBar.value)
    }
    @IBAction func pauseAudio(sender: AnyObject) {
         myAudio.pause()
    }

    @IBAction func playAudio(sender: AnyObject) {
         myAudio.play()
        updateTimer=NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector:#selector(self.updateSeekBar), userInfo: nil, repeats: true)
    }
    @IBAction func stopAudio(sender: AnyObject) {
         myAudio.stop()
        myAudio.currentTime=0
    }
    @IBAction func volumeControl(sender: AnyObject) {
        myAudio.volume = volumeLevel.value
    }
    
    func updateSeekBar(){
    let progress=self.myAudio.currentTime
        self.seekBar.value=Float(progress)
        let minutes=Int(progress)/60
        let seconds=Int(progress-Double(minutes*60))
        
        let TotalMin=Int(myAudio.duration)/60
        let sec=Int(myAudio.duration-Double(TotalMin*60))
        
    playerStatus.text="\(minutes):\(seconds)/\(TotalMin):\(sec)"
    }
    
}

