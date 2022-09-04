//
//  LocationDetailsViewController.swift
//  MyLocations
//
//  Created by c.toan on 02.09.2022.
//

import UIKit

class LocationDetailsViewController: UITableViewController {
    @IBOutlet var descriptionTextView: UITextView!
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var latitudeLabel: UILabel!
    @IBOutlet var longtitudeLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
     
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
}
