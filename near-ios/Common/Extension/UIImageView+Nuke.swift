//
//  UIImageView+Nuke.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import Nuke

extension UIImageView {

    func setImage(with url: URL?, placeholder: UIImage? = nil) {
        image = placeholder
        guard let url = url else { return }
        Nuke.loadImage(with: url, options: ImageLoadingOptions(transition: .fadeIn(duration: 0.2)), into: self)
    }
}
