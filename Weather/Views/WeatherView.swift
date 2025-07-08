//
//  WeatherView.swift
//  Weather
//
//  Created by Andres Lopez on 8/07/25.
//

import SwiftUI

struct WeatherView: View{
    @StateObject private var viewModel = WeatherViewModel()
    
    var body: some View{
        NavigationStack{
            VStack (spacing: 20){
                TextField("Ingresa una ciudad", text: $viewModel.city)
                    .textFieldStyle(.roundedBorder)
                    .padding()

                Button("Buscar clima") {
                    Task { await viewModel.fetchWeather() }
                }

                if viewModel.isLoading {
                    ProgressView()
                } else {
                    Text(viewModel.temperature)
                        .font(.system(size: 48, weight: .bold))
                    Text(viewModel.description)
                        .font(.title3)
                }
                if let error = viewModel.errorMessage {
                    Text(error)
                        .foregroundStyle(.red)
                        .padding()
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Clima")
        }
    }
}
