//
//  ViewController.swift
//  Download Web Content
//
//  Created by Arvind Kumar on 5/23/16.
//  Copyright © 2016 epam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url=NSURL(string: "https://www.epam.com")
        myWebView.loadRequest(NSURLRequest(URL: url!))
        
//        let task=NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) in
//            if let data=data{
//              
//                dispatch_async(dispatch_get_main_queue(), { 
//                    self.myWebView.loadHTMLString(String(NSString(data: data,encoding: NSUTF8StringEncoding)!), baseURL: nil)
//                })
//                
//            }
//        }
//        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

