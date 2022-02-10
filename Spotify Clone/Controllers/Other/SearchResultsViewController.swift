//
//  SearchResultsViewController.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 31/01/22.
//

import UIKit

class SearchResultsViewController: UIViewController {
    
    private var results: [SearchResult] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .clear
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
//    func update(with results: SearchResult) {
//        self.results = results
//    }
}
