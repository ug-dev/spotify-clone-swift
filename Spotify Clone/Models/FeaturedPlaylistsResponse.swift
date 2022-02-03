//
//  FeaturedPlaylistsResponse.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 02/02/22.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let items: [Playlist]
}

struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}
