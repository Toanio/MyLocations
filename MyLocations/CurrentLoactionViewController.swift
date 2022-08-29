//
//  ViewController.swift
//  MyLocations
//
//  Created by c.toan on 29.08.2022.
//

import UIKit
import CoreLocation

class CurrentLoactionViewController: UIViewController, CLLocationManagerDelegate{
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longtitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var tagButton: UIButton!
    @IBOutlet weak var getButton: UIButton!
    
    let locationManager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("didFailWithError \(error.localizedDescription)")
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
         let newLocation = locations.last!
         print("didUpdateLocations \(newLocation)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - Actions
    @IBAction func getLocation() {
        let authStatus = locationManager.authorizationStatus
        
        if authStatus == .notDetermined {
         locationManager.requestWhenInUseAuthorization()
         return
        }
        
        if authStatus == .denied || authStatus == .restricted {
         showLocationServicesDeniedAlert()
         return
        }
        
        locationManager.delegate = self
        locationManager.desiredAccuracy =
        kCLLocationAccuracyNearestTenMeters
        locationManager.startUpdatingLocation()
        
    }
    
    func showLocationServicesDeniedAlert() {
        let alert = UIAlertController(
        title: "Location Services Disabled",
        message: "Please enable location services for this app in Settings.",
        preferredStyle: .alert)
        
        let okAction = UIAlertAction(
        title: "OK",
        style: .default,
        handler: nil)
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }


}

