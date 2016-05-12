//
//  ViewController.swift
//  streatchableImageDemo
//
//  Created by Arvind Kumar on 5/10/16.
//  Copyright © 2016 epam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let img=UIImage(named: "roundedimage.png")
//        
        let resizableImg=img?.resizableImageWithCapInsets(UIEdgeInsets(top:0,left:5,bottom: 0,right:5))
        myImageView.image=resizableImg
//         let resizableImg2=img?.resizableImageWithCapInsets(UIEdgeInsets(top:0,left:0,bottom:0,right: 0), resizingMode: .Stretch)
//        myImageView2.image=resizableImg2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

