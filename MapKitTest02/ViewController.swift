//
//  ViewController.swift
//  MapKitTest02
//
//  Created by D7703_15 on 2019. 9. 16..
//  Copyright © 2019년 bohyun. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 위도, 경도 설정 (DIT 35.165964, 129.072543)
        let location = CLLocationCoordinate2D(latitude: 35.165964, longitude: 129.072543)
        
        // 반경 설정
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        // region 설정
        let region = MKCoordinateRegion(center: location, span: span)
        
        //mapView 에 add
        mapView.setRegion(region, animated: true)
    }


}

