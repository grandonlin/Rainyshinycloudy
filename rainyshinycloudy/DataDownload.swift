//
//  DataDownload.swift
//  rainyshinycloudy
//
//  Created by Grandon Lin on 2017-02-06.
//  Copyright © 2017 Grandon Lin. All rights reserved.
//

import Foundation
import Alamofire

class DataDownload {
    
    var currentCityName: String!
    var currentWeatherType: String!
    var currentTemp:Double!
    
    
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        print(CURRENT_WEATHER_URL)
        Alamofire.request(currentWeatherURL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, Any> {
                
                if let name = dict["name"] as? String {
                    self.currentCityName = name.capitalized
                    print(self.currentCityName)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, Any>] {
                    if let main = weather[0]["main"] as? String {
                        self.currentWeatherType = main.capitalized
                        
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, Any> {
                    if let currentTemperature = main["temp"] as? Double {
                        let kelvinToCelsius = Double(round(currentTemperature - 273.15))
                        self.currentTemp = kelvinToCelsius
                    }
                }
            }
            completed()
        }
    }

}
