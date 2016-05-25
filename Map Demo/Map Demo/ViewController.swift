//
//  ViewController.swift
//  Map Demo
//
//  Created by Arvind Kumar on 5/25/16.
//  Copyright © 2016 epam. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var latitude:CLLocationDegrees=40.7
        
        var longitude: CLLocationDegrees = -73.9
        
        var latDelta:CLLocationDegrees=0.01
        
        var lonDelta:CLLocationDegrees=0.01
        
        var span:MKCoordinateSpan=MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: false)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}





