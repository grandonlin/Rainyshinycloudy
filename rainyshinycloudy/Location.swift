//
//  Location.swift
//  rainyshinycloudy
//
//  Created by Grandon Lin on 2017-02-04.
//  Copyright © 2017 Grandon Lin. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
    
}
