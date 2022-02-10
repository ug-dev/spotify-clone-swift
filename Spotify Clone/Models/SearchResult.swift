//
//  SearchResult.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 10/02/22.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
