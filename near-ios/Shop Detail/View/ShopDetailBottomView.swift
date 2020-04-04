//
//  ShopDetailBottomView.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

final class ShopDetailBottomView: UIView, XibOwnerInstantiatable {

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
        loadNibContent()
    }

    @IBAction private func callButtonTapped(_ sender: RoundButton) {
        onTapCall?()
    }   

    @IBAction private func mapButtonTapped(_ sender: RoundButton) {
        onTapMap?()
    }
}

