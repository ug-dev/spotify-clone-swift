//
//  RecommendationsResponse.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 02/02/22.
//

import Foundation

struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
}
