//
//  TitleHeaderCollectionReusableView.swift
//  Spotify Clone
//
//  Created by Umang Gadhavana on 09/02/22.
//

import UIKit

class TitleHeaderCollectionReusableView: UICollectionReusableView {
static let identifier = "TitleHeaderCollectionReusableView"
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.numberOfLines = 1
        label.font = .systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(nameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.frame = CGRect(x: 15, y: 0, width: width-30, height: height)
    }
    
    func configure(with title: String) {
        nameLabel.text = title
    }
}
