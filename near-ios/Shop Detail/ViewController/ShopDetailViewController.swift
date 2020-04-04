//
//  _ShopDetailViewController.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/04/04.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

final class ShopDetailViewController: ViewController {

    @IBOutlet private weak var detailView: ShopDetailView!
    @IBOutlet private weak var bottomView: ShopDetailBottomView!
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()


        bottomView.onTapCall = { [weak self] in

        }

        bottomView.onTapMap = { [weak self] in

        }
    }
}
