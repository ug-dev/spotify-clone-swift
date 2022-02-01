//
//  SettingsModels.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 01/02/22.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void 
}
