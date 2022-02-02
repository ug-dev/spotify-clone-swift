//
//  Artist.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 31/01/22.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
