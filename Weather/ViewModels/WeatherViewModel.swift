//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Andres Lopez on 8/07/25.
//

import Foundation
import Combine

class WeatherViewModel: ObservableObject {
    @Published var city: String = ""
    @Published var temperature: String = ""
    @Published var description: String = ""
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    
    private let service: WeatherServiceProtocol
    
    init(service:WeatherServiceProtocol = WeatherService()){
        self.service = service
    }
    
    func fetchWeather() async {
        
        isLoading = true
        errorMessage = nil
        do{
            let result = try await service.fetchWeather(for: city)
            temperature = String(format: "%.0f°C", result.main.temp)
            description = result.weather.first?.description.capitalized ?? "Sin descripción"
        } catch{
            errorMessage = "No se pudo obtener el clima: \(error.localizedDescription)"
        }
        isLoading = false
    }
}
