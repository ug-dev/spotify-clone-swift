//
//  Playlist.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 31/01/22.
//

import Foundation

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let name: String
    let images: [APIImage]
    let owner: User
}
