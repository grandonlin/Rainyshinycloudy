//
//  WeatherCell.swift
//  rainyshinycloudy
//
//  Created by Grandon Lin on 2017-02-02.
//  Copyright © 2017 Grandon Lin. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTemp.text = forecast.lowTemp
        highTemp.text = forecast.highTemp
        weatherType.text = forecast.weatherType
        dayLabel.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }

}
