//
//  ShopDetailBottomView.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

final class ShopDetailBottomView: UIView {

    var onTapCall: (() -> Void)?
    var onTapMap: (() -> Void)?

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

        let view = Bundle.main.loadNibNamed("ShopDetailBottomView", owner: self, options: nil)?.first as! UIView
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = bounds
        addSubview(view)

        view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    @IBAction private func callButtonTapped(_ sender: RoundButton) {
        onTapCall?()
    }   

    @IBAction private func mapButtonTapped(_ sender: RoundButton) {
        onTapMap?()
    }
}

