//
//  AlbumDetailsResponse.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 08/02/22.
//

import Foundation

struct AlbumDetailsReseponse: Codable {
    let album_type: String
    let artists: [Artist]
    let available_markets: [String]
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let label: String
    let name: String
    let tracks: TracksResponse
}

struct TracksResponse: Codable {
    let items: [AudioTrack]
}
