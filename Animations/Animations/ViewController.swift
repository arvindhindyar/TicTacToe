//
//  ViewController.swift
//  Animations
//
//  Created by Arvind Kumar on 5/24/16.
//  Copyright © 2016 epam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet var imageImageView: UIImageView!
    var counter=1
    var timer = NSTimer()
    var isAnimating=true
    @IBAction func updateImage(sender: AnyObject) {
        if isAnimating==true{
            startStopButton.setTitle("Start", forState: .Normal)
        timer.invalidate()
            isAnimating=false
            
        }
        else{
        timer=NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(self.doAnimation), userInfo: nil, repeats: true)
            isAnimating=true
           startStopButton.setTitle("Stop", forState: .Normal)
        }
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer=NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(self.doAnimation), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func doAnimation(){
        if(counter==5)
        {
            counter=1
        }
        else{
            counter+=1
        }
        self.imageImageView.image=UIImage(named: "Frame\(counter).png")
    }
    override func viewDidLayoutSubviews() {
//        imageImageView.center=CGPointMake(imageImageView.center.x-400, imageImageView.center.y)
//        imageImageView.alpha=0
       // imageImageView.frame=CGRectMake(100, 20, 0, 0)
    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1) { 
//            self.imageImageView.center=CGPointMake(self.imageImageView.center.x+400, self.imageImageView.center.y)
//            self.imageImageView.alpha=1
            //self.imageImageView.frame=CGRectMake(100, 20, 100, 200)
        }
    }
}

