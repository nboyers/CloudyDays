//
//  WeatherManager.swift
//  CloudyDays
//
//  Created by Noah Boyers on 6/5/22.
//

import Foundation
import CoreLocation

//MARK: Retrives the Data from the weather API
class WeatherManager {
    func getCurrentWeather(lat: CLLocationDegrees, long: CLLocationDegrees) async throws -> ResponseBody {
        
        // Removed API KEY, you will need to get your own - round 2
        let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String
        guard let key = apiKey, !key.isEmpty else { fatalError("API key does not exist") }
        guard let weatherURL = URL(string: "http://api.openweathermap.org/geo/1.0/reverse?lat={\(lat)}&lon={\(long)}&limit={limit}&appid={\(key)&units=imperial}") else { fatalError("Missing URL") }
        
        
        
        let urlRequest = URLRequest(url: weatherURL)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
        
        let decodedData = try JSONDecoder().decode(ResponseBody.self, from: data)
        
        return decodedData
    }
}
