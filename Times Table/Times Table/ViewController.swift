//
//  ViewController.swift
//  Times Table
//
//  Created by Arvind Kumar on 5/23/16.
//  Copyright © 2016 epam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableSlider: UISlider!

    @IBAction func sliderMoved(sender: AnyObject) {
        timesTableView.reloadData()
    }
    @IBOutlet weak var timesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 10
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        let table=Int(tableSlider.value*20)
        
        cell.textLabel?.text="\(table * (indexPath.row+1))"
        return cell
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

