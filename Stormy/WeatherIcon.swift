//
//  WeatherIcon.swift
//  Stormy
//
//  Created by Marcus Klausen on 17/09/2017.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
import UIKit


enum WeatherIcon {
    case clearDay
    case clearNight
    case rain
    case snow
    case sleet
    case wind
    case fog
    case cloudy
    case partlyCloudyDay
    case partlyCloudyNight
    case `default`
    
    init(iconString: String) {
        switch iconString {
        case "clear-day": self = .clearDay
        case "clear-night": self = .clearNight
        case "rain": self = .rain
        case "snow": self = .snow
        case "sleet": self = .sleet
        case "wind": self = .wind
        case "fog": self = .fog
        case "cloudy": self = .cloudy
        case "partly-cloudy-day": self = .partlyCloudyDay
        case "partly-cloudy-night": self = .partlyCloudyNight
        default: self = .default
        }
    }
}

extension WeatherIcon {
    var image: UIImage {
        switch self {
        case .clearDay: return #imageLiteral(resourceName: "clear-day")
        case .clearNight: return #imageLiteral(resourceName: "clear-night")
        case .cloudy: return #imageLiteral(resourceName: "cloudy")
        case .fog: return #imageLiteral(resourceName: "fog")
        case .partlyCloudyDay: return #imageLiteral(resourceName: "partly-cloudy-day")
        case .partlyCloudyNight: return #imageLiteral(resourceName: "partly-cloudy-night")
        case .rain: return #imageLiteral(resourceName: "rain")
        case .snow: return #imageLiteral(resourceName: "snow")
        case .wind: return #imageLiteral(resourceName: "wind")
        case .sleet: return #imageLiteral(resourceName: "sleet")
        case .default: return #imageLiteral(resourceName: "default")
            
        }
    }
}
