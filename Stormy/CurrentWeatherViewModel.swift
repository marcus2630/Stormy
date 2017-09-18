//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by Marcus Klausen on 17/09/2017.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {
    let temperature: String
    let humidity: String
    let precipitationProbabilty: String
    let summary: String
    let icon: UIImage
    
    init(model: CurrentWeather) {
        
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)º"
        
        let humidityPercentValue = Int(model.humidity * 100)
        self.humidity = "\(humidityPercentValue)%"
        
        let precipPercentValue = Int(model.precipProbabilty * 100)
        self.precipitationProbabilty = "\(precipPercentValue)%"
        
        self.summary = model.summary
        
        let weatherIcon = WeatherIcon(iconString: model.icon)
        
        self.icon = weatherIcon.image
    }
}
