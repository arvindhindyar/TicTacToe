//
//  ViewController.swift
//  permanent Storage
//
//  Created by Arvind Kumar on 5/23/16.
//  Copyright © 2016 epam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Arind", forKey: "user")
        
        let user=NSUserDefaults.standardUserDefaults().objectForKey("user")!
        
        print(user)
        
        let arr=[23,45,66,42,64,322,75]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let array = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        print(array)
        for  i in array{
        print(i)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

