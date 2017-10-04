//
//  DarkSkyAPIClient.swift
//  Stormy
//
//  Created by Marcus Klausen on 02/10/2017.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


class DarkSkyAPIClient {
    
    fileprivate let apiKey = "f075fc007e46214e925d6096c63f248e"
    
    lazy var baseUrl: URL = {
        return URL(string: "https://api.darksky.net/forecast/\(self.apiKey)/")!
    }()
    
    let downloader = JSONDownloader()
    
    typealias CurrentWeatherCompletionHandler = (CurrentWeather?, DarkSkyError?) -> Void
    
    // Both tuple values are not allowed to be nill at the same time, hence we make them both optional
    func getCurrentWeather(at coordinate: Coordinate, completionHandler completion: @escaping CurrentWeatherCompletionHandler) {
        
        guard let url = URL(string: coordinate.description, relativeTo: baseUrl) else {
            completion(nil, .invalidUrl)
            return
        }
        
        let request = URLRequest(url: url)
        
        let task = downloader.jsonTask(with: request) { json, error in
            
            DispatchQueue.main.async {
                guard let json = json else {
                    completion(nil, error)
                    return
                }
                
                guard let currentWeatherJson = json["currently"] as? [String: AnyObject],
                    let currentWeather = CurrentWeather(json: currentWeatherJson) else {
                        completion(nil, .jsonParsingFailure)
                        return
                }
                
                completion(currentWeather, nil)
            }
            
            
        }
        
        task.resume()
        
    }
}
