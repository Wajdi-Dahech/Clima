//
//  WeatherModel.swift
//  Clima
//
//  Created by Katsu on 8/2/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import Foundation

struct WeatherModel {
    
    let cityName: String
    let conditionID: Int
    let temp: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temp)
    }
    var conditionName: String {
        
        switch conditionID {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801:
            return "cloud.sun"
        case 802...804:
            return "cloud"
        default:
            return "cloud"
    }
    
    }
}
