//
//  Funcctions.swift
//  MyLocations
//
//  Created by c.toan on 05.09.2022.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(
        deadline: .now() + seconds,
        execute: run)
}
