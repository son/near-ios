//
//  RefreshControl.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

final class RefreshControl: UIRefreshControl {

    override init() {
        super.init()
        tintColor = Color.mainRed
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
