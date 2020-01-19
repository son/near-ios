//
//  GridCell.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

final class GridCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!

    var url: URL? {
        didSet {
            imageView.setImage(with: url)
        }
    }
}
