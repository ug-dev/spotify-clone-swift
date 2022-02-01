//
//  APICaller.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 31/01/22.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    init () {}
    
    struct Constants {
        static let baseAPIURL = "https://api.spotify.com/v1"
    } 
    
    enum APIError: Error {
        case failedToGetData
    }
    
    public func getCurrentUserProfile(completion: @escaping (Result<UserProfile, Error>) -> Void) {
        createRequest(
            with: URL(string: Constants.baseAPIURL + "/me"),
            type: .GET
        ) { baseRequest in
            let task = URLSession.shared.dataTask(with: baseRequest) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(APIError.failedToGetData))
                    return
                }

                do {
//                    let result = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    let result = try JSONDecoder().decode(UserProfile.self, from: data)
//                    print(result)
                    completion(.success(result))
                } catch {
                    print(error.localizedDescription )
                    completion(.failure(error))
                }
            }
            task.resume()
        }
    }
    
    // MARK - Private
    
    enum HTTPMethod: String {
        case GET
        case POST
    }
    
    private func createRequest(
        with url: URL?,
        type: HTTPMethod,
        completion: @escaping  (URLRequest) -> Void
    ) {
        AuthManager.shared.withValidToken { token in
            guard let APIUrl = url else {
                return
            }
            var request = URLRequest(url: APIUrl)
            request.httpMethod = type.rawValue
            request.timeoutInterval = 30
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            completion(request)
        }
    }
}
