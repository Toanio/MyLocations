//
//  String+ AddText.swift
//  MyLocations
//
//  Created by c.toan on 14.09.2022.
//

import UIKit

extension String {
    mutating func add(
        text: String?,
        separatedBy separator: String) {
            if let text = text {
                if !isEmpty {
                    self += separator
                }
                self += text
            }
        }
}
