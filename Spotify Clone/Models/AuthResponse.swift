//
//  AuthResponse.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 31/01/22.
//

//{
//    "access_token" = "BQCIWqjFZVG5aMSrahBleVMa4u-_PM6g64FZ0chPK2d1JlbXhwFWeOrfceWdWyKKYEaXAa4Tk_sPSegjvtW4-G1amZ1KJRLbBF3iPnuTwbiceJCUyxcjLo4-glTmiHk3fhvnEMCeHEib2OF13AumQ-8260uA4mv_ljZEVMgfelEIjXfRqWI";
//    "expires_in" = 3600;
//    "refresh_token" = "AQByMRz9D9dTKV84GKQ29Hr-2xc5zlKe9iUJ9tCnU4_RrIVHs9zcPhQpnGzxFrKTLfsPXK-9YV1fPdsSJl2z9viAJQX3uz-WUKXmTlgCwsHHw91_Fzx6ijNyNFRXp9X9zcc";
//    scope = "user-read-private";
//    "token_type" = Bearer;
//}

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}

