//
//  WeatherResponse.swift
//  Weather
//
//  Created by Andres Lopez on 8/07/25.
//

import Foundation

struct WeatherResponse: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    
    struct Main: Codable {
        let temp: Double
    }
    
    struct Weather: Codable {
        let description: String
        let icon: String
    }
}
