//
//  ShopDetailView.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

final class ShopDetailView: UIView {

    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var stackView: UIStackView!
    @IBOutlet private weak var pageControl: UIPageControl!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var bioLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }

    private func initialize() {
        translatesAutoresizingMaskIntoConstraints = false

        let view = Bundle.main.loadNibNamed("ShopDetailView", owner: self, options: nil)?.first as! UIView
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = bounds
        addSubview(view)

        view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    var urls: [URL] = [] {
        didSet {
            urls.forEach {
                let imageView = UIImageView()
                imageView.clipsToBounds = true
                imageView.contentMode = .scaleAspectFill
                imageView.translatesAutoresizingMaskIntoConstraints = false
                imageView.widthAnchor.constraint(equalToConstant: scrollView.bounds.width).isActive = true
                imageView.setImage(with: $0)
                self.stackView.addArrangedSubview(imageView)
            }
        }
    }
}
