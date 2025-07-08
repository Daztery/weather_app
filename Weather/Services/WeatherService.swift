//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Andres Lopez on 8/07/25.
//

import Foundation

protocol WeatherServiceProtocol {
    func fetchWeather(for city: String) async throws -> WeatherResponse
}

class WeatherService: WeatherServiceProtocol{
    private let apiKey = Constants.apiKey
    private let baseURL = "https://api.openweathermap.org/data/2.5/weather"
    
    func fetchWeather(for city: String) async throws -> WeatherResponse {
        let query = "\(baseURL)?q=\(city)&appid=\(apiKey)&units=metric&lang=es"
        guard let url = URL(string: query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!) else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(WeatherResponse.self, from: data)
    }
    
    
}
