//
//  UserProfile.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 31/01/22.
//

//{
//    country = IN;
//    "display_name" = "Umang Gadhavana";
//    email = "gadhavanaumang007@gmail.com";
//    "explicit_content" =     {
//        "filter_enabled" = 0;
//        "filter_locked" = 0;
//    };
//    "external_urls" =     {
//        spotify = "https://open.spotify.com/user/jcxgvvte6p1j8m10ytrw7vjbn";
//    };
//    followers =     {
//        href = "<null>";
//        total = 19;
//    };
//    href = "https://api.spotify.com/v1/users/jcxgvvte6p1j8m10ytrw7vjbn";
//    id = jcxgvvte6p1j8m10ytrw7vjbn;
//    images =     (
//                {
//            height = "<null>";
//            url = "https://i.scdn.co/image/ab6775700000ee854e4d363f48fb9ce4311db1ef";
//            width = "<null>";
//        }
//    );
//    product = premium;
//    type = user;
//    uri = "spotify:user:jcxgvvte6p1j8m10ytrw7vjbn";
//}


import Foundation

struct UserProfile: Codable {
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
//    let followers: [String: Codable?]
    let id: String
    let product: String
    let images: [APIImage]
}
