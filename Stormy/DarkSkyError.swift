//
//  DarkSkyError.swift
//  Stormy
//
//  Created by Marcus Klausen on 27/09/2017.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


enum DarkSkyError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case JSONConversionFailure
    case invalidUrl
    case jsonParsingFailure
}
