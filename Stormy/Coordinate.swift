//
//  Coordinate.swift
//  Stormy
//
//  Created by Marcus Klausen on 02/10/2017.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


struct Coordinate {
    let latitude: Double
    let longitude: Double
}


extension Coordinate: CustomStringConvertible {
    var description: String {
        return "\(latitude),\(longitude)?units=si"
    }
}
