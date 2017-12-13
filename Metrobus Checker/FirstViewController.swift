//
//  FirstViewController.swift
//  Metrobus Checker
//
//  Created by Simon Chervenak on 12/8/17.
//  Copyright © 2017 Innoviox. All rights reserved.
//

import UIKit
import MapKit

class FirstViewController: UIViewController, CLLocationManagerDelegate {
    //MARK: Properties
    @IBOutlet weak var map: MKMapView!
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        map.mapType = MKMapType.standard
        
        let location = CLLocationCoordinate2DMake(22.4651, 70.0771)
        
        let span = MKCoordinateSpanMake(0.5, 0.5)
        let region =  MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        
        let annonation = MKPointAnnotation()
        annonation.coordinate = location
        annonation.title = "Chandi Bazar"
        annonation.subtitle = "Jamnagar"
        //
        map.addAnnotation(annonation)
        self.locationManager = CLLocationManager()
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled()
        {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        
        locationManager.stopUpdatingLocation()
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
    {
        if (annotation is MKUserLocation)
        {
            return nil
        }
        
        let annotationidentifier = "Annotationidentifier"
        
        var annotationview:MKAnnotationView
        annotationview = MKAnnotationView(annotation: annotation, reuseIdentifier: annotationidentifier)
        
        let btn = UIButton(type: .detailDisclosure)
        
        
        annotationview.rightCalloutAccessoryView = btn
        
        annotationview.image = UIImage(named: "images (4).jpeg")
        
        annotationview.canShowCallout = true
        
        return annotationview
    }
    
}

