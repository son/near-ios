//
//  RoundButton.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

final class RoundButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }

    private func initialize() {
        clipsToBounds = true
        backgroundColor = Color.mainRed
        titleLabel?.font = .boldSystemFont(ofSize: 15)
        setTitleColor(.white, for: .normal)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
    }

    override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.height = 48
        contentSize.width += 20 * 2
        return contentSize
    }

    override var isHighlighted: Bool {
        didSet {
            executeScaleAnimation(isHighlighted: isHighlighted)
        }
    }
}
