//
//  AllCategoriesResponse.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 10/02/22.
//

import Foundation

struct AllCategoriesResponse: Codable {
    let categories: Categories
}

struct Categories: Codable {
    let items: [Category]
}

struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}
