//
//  MapViewController.swift
//  MyLocations
//
//  Created by c.toan on 09.09.2022.
//

import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!
    
    var managedObjectContext: NSManagedObjectContext!
    
    @IBAction func showUser() {
        let region = MKCoordinateRegion(
            center: mapView.userLocation.coordinate,
            latitudinalMeters: 1000,
            longitudinalMeters: 1000)
        mapView.setRegion(
            mapView.regionThatFits(region),
            animated: true)
    }
    
    @IBAction func showLocations() {
        
    }
    
}

extension MapViewController: MKMapViewDelegate {
    
}
