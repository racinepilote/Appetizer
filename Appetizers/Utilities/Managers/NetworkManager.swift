//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals"
    static let appetizerURL = baseURL + "/appetizers"
    
    private let cache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        guard let url = URL(string: NetworkManager.appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }

        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
//                print("Error received requesting data: \(error.localizedDescription)")
                completed(.failure(.unableToComplite))
                return
            }

            guard let response = response as? HTTPURLResponse else {
                completed(.failure(.invalidResponse))
                return
            }

            guard response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

//            print("Raw JSON string: \(String(data: data, encoding: .utf8) ?? "Invalid data")")

            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                print("Error decoding data: \(error.localizedDescription)")
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }
    
    func downloadImage(fromURLString: String, completed: @escaping (UIImage?) -> Void) {
        
        let cacheKey = NSString(string: fromURLString)
        
        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }
        
        guard let url = URL(string: fromURLString) else {
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }
        
        task.resume()
        
    }
}
