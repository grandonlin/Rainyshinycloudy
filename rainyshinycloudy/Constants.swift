//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by Grandon Lin on 2017-01-22.
//  Copyright © 2017 Grandon Lin. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "1cf3cba5daa2b770035c86ef39d65e7a"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=1cf3cba5daa2b770035c86ef39d65e7a"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=1cf3cba5daa2b770035c86ef39d65e7a"
