# WeatherApp

A simple and modern weather application built with **SwiftUI**, consuming the OpenWeatherMap API to display the current weather of any city.

Designed as part of my portfolio to showcase best practices in iOS development: MVVM architecture, API consumption, state management, and reactive UI using SwiftUI.

---

## 🚀 Features

- Search for weather by city
- Display current temperature, weather description, and representative icon
- Clean and responsive UI
- MVVM architecture
- API consumption using `async/await`
- Error handling and loading states

---

## 🛠 Technologies

- **Swift 5**
- **SwiftUI**
- **MVVM**
- **OpenWeatherMap API**
- **Combine / async-await**

---

## 🧱 Project Structure

```
WeatherApp/
├── Models/
│   └── WeatherResponse.swift
├── ViewModels/
│   └── WeatherViewModel.swift
├── Views/
│   └── WeatherView.swift
├── Services/
│   └── WeatherService.swift
├── Utils/
│   └── Constants.swift
├── WeatherApp.swift
```

---

## 🗝 Requirements

1. Xcode 15 or later.
2. An account on [OpenWeatherMap](https://openweathermap.org/api) to obtain a free API key.
3. Add your API key in the `Constants.swift` file:

```swift
enum Constants {
    static let apiKey = "YOUR_API_KEY_HERE"
}
```

---

## ▶️ How to Run

1. Clone the repository:
```bash
git clone https://github.com/Daztery/weather_app.git
```

2. Open the project in Xcode:
```bash
open WeatherApp.xcodeproj
```

3. Replace the API key in `Constants.swift`
4. Run the app on the simulator or your device

---

## 📌 Future Improvements

- Save recent or favorite cities
- Show hourly or 7-day forecast
- Offline support with local storage
- Location-based weather (using CoreLocation)


---

**Developed with ❤️ by Andrés López Hurtado**

