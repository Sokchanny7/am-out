//
//  MapViewController.swift
//  Amout
//
//  Created by sok channy on 2/2/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: UIView!
    @IBOutlet weak var unavaliableMapView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        let camera = GMSCameraPosition.camera(withLatitude: -33.868,
//                                              longitude: 151.2086,
//                                              zoom: 14)
//        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
//        
//        let marker = GMSMarker()
//        marker.position = camera.target
//        marker.snippet = "Hello World"
//        marker.appearAnimation = kGMSMarkerAnimationPop
//        marker.map = mapView
        
        //self.unavaliableMapView.removeFromSuperview()
        //self.mapView = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
